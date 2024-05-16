#include "ast.hpp"

#include <cstring>
#include <iostream>
#include <queue>
#include <stack>
#include <map>
#include <sstream>
#define _AST_NODE_ERROR_                                   \
    std::cerr << "Abort due to node cast error."           \
                 "Contact with TAs to solve your problem." \
              << std::endl;                                \
    std::abort();
#define _STR_EQ(a, b) (strcmp((a), (b)) == 0)
int is_const = 0;
void AST::run_visitor(ASTVisitor &visitor) { root->accept(visitor); }
AST::AST(syntax_tree *s)
{
    if (s == nullptr)
    {
        std::cerr << "empty input tree!" << std::endl;
        std::abort();
    }
    auto node = transform_node_iter(s->root);
    del_syntax_tree(s);
    root = std::shared_ptr<ASTSTARTPOINT>(static_cast<ASTSTARTPOINT *>(node));
}
ASTNode *AST::transform_node_iter(syntax_tree_node *n)
{
    // STARTPOINT:CompUnit
    // CompUnit: CompUnit GlobalDecl | GlobalDecl
    /*
    struct ASTSTARTPOINT : ASTNode
    {
        virtual Value *accept(ASTVisitor &) override;
        virtual ~ASTSTARTPOINT() = default;
        std::vector<shared_ptr<ASTGlobalDef>> global_defs;
    };
    */
    if (_STR_EQ(n->name, "STARTPOINT"))
    {
        return transform_node_iter(n->children[0]);
    }
    else if (_STR_EQ(n->name, "CompUnit"))
    {
        auto node = new ASTSTARTPOINT();
        if (n->children_num == 2)
        {
            auto child_node = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[0]));
            node->global_defs.insert(node->global_defs.end(), child_node->global_defs.begin(), child_node->global_defs.end());
            auto child_node2 = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[1]));
            node->global_defs.insert(node->global_defs.end(), child_node2->global_defs.begin(), child_node2->global_defs.end());
        }
        else
        {
            auto child_node = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[0]));
            node->global_defs.insert(node->global_defs.end(), child_node->global_defs.begin(), child_node->global_defs.end());
        }
        return node;
    }
    // GlobalDecl: ConstDecl| VarDecl| FuncDef
    else if (_STR_EQ(n->name, "GlobalDecl"))
    {
        if (_STR_EQ(n->children[0]->name, "FuncDef"))
        {
            auto child_node = dynamic_cast<ASTFuncDef *>(transform_node_iter(n->children[0]));
            auto node = new ASTSTARTPOINT();
            node->global_defs.push_back(std::shared_ptr<ASTGlobalDef>(child_node));
            return node;
        }
        return transform_node_iter(n->children[0]);
    }
    /*
    ConstDecl: CONST INT VarDefList SEMICOLON
    | CONST FLOAT VarDefList SEMICOLON
    */
    else if (_STR_EQ(n->name, "ConstDecl"))
    {
        auto child_node = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[2]));

        for (auto &decl : child_node->global_defs)
        {
            ASTVarDef *var_def = dynamic_cast<ASTVarDef *>(decl.get());
            if (var_def)
            {
                var_def->is_const_or_not = true;
                if (_STR_EQ(n->children[1]->name, "int"))
                {
                    var_def->type_ = TYPE_INT;
                }
                else
                {
                    var_def->type_ = TYPE_FLOAT;
                }
            }
        }
        return child_node;
    }
    /*
    VarDecl: INT VarDefList SEMICOLON
    | FLOAT VarDefList SEMICOLON
    */
    else if (_STR_EQ(n->name, "VarDecl"))
    {
        auto child_node = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[1]));
        for (auto decl : child_node->global_defs)
        {
            ASTVarDef *var_def = dynamic_cast<ASTVarDef *>(decl.get());
            var_def->is_const_or_not = false;
            if (_STR_EQ(n->children[0]->name, "int"))
            {
                var_def->type_ = TYPE_INT;
            }
            else
            {
                var_def->type_ = TYPE_FLOAT;
            }
        }
        return child_node;
    }
    /*
    VarDefList:VarDefList COMMA VarDef| VarDef
    */
    else if (_STR_EQ(n->name, "VarDefList"))
    {
        auto node = new ASTSTARTPOINT();
        if (n->children_num == 3)
        {
            auto child_node = static_cast<ASTSTARTPOINT *>(transform_node_iter(n->children[0]));
            node->global_defs.insert(node->global_defs.end(), child_node->global_defs.begin(), child_node->global_defs.end());
            auto child_node2 = dynamic_cast<ASTGlobalDef *>(transform_node_iter(n->children[2]));
            auto shared_node = std::shared_ptr<ASTGlobalDef>(child_node2);
            node->global_defs.push_back(shared_node);
        }
        else
        {
            auto child_node = dynamic_cast<ASTGlobalDef *>(transform_node_iter(n->children[0]));
            auto shared_node = std::shared_ptr<ASTGlobalDef>(child_node);
            node->global_defs.push_back(shared_node);
        }
        return node;
    }
    // VarDef: Ident ArrayExpList | Ident ArrayExpList ASSIGN InitVal
    // ArrayExpList:  ArrayExpList LBRACKET Exp RBRACKET   |   epsilon
    else if (_STR_EQ(n->name, "VarDef"))
    {
        auto node = new ASTVarDef();
        node->id = n->children[0]->name;
        if (n->children_num == 4)
        {
            // 有初始化
            if (is_const)
            {
                // node->a = 1;
                node->is_const_or_not = true;
            }
            node->is_init = true;
            auto child_node = static_cast<ASTInitVal *>(transform_node_iter(n->children[3]));
            node->init_val = std::shared_ptr<ASTInitVal>(child_node);
        }
        auto child_node = n->children[1];
        while (child_node->children_num == 4)
        {
            auto child_node2 = static_cast<ASTAddExp *>(transform_node_iter(child_node->children[2]));
            auto child_node2_shared = std::shared_ptr<ASTAddExp>(child_node2);
            node->arr_len.push_back(child_node2_shared);
            child_node = child_node->children[0];
        }
        // 把数组长度倒序
        std::reverse(node->arr_len.begin(), node->arr_len.end());

        return node;
    }
    /*
    InitVal: Exp
    {
        $$ = node("InitVal", 1, $1);
    }

    | LBRACE InitValList RBRACE
    {
        $$ = node("InitVal", 3, $1, $2, $3);
    } */
    /*
    InitValList: InitValList  COMMA  InitVal
    {
    $$ = node("InitValList", 3, $1, $2, $3);
    }
    | InitVal
    {
    $$ = node("InitValList", 1, $1);
    }
    |
    {
    $$ = node("InitValList", 0);
    }
    */
    else if (_STR_EQ(n->name, "InitVal"))
    {
        auto node = new ASTInitVal();
        if (n->children_num == 1)
        {
            node->is_exp = true;
            node->expression = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else
        {
            node->is_exp = false;
            auto child_node = n->children[1];
            if (child_node->children_num == 1 && _STR_EQ(child_node->children[0]->name, "InitVal"))
            {
                auto child_node2 = static_cast<ASTInitVal *>(transform_node_iter(child_node->children[0]));
                auto child_node2_shared = std::shared_ptr<ASTInitVal>(child_node2);
                node->init_vals.push_back(child_node2_shared);
                return node;
            }
            if (child_node->children_num == 1 && _STR_EQ(child_node->children[0]->name, "epsilon"))
            {
                return node;
            }
            while (child_node->children_num == 3)
            {
                auto child_node2 = static_cast<ASTInitVal *>(transform_node_iter(child_node->children[2]));
                auto child_node2_shared = std::shared_ptr<ASTInitVal>(child_node2);
                node->init_vals.push_back(child_node2_shared);
                child_node = child_node->children[0];
                if (child_node->children_num == 1 && _STR_EQ(child_node->children[0]->name, "InitVal"))
                {
                    auto child_node2 = static_cast<ASTInitVal *>(transform_node_iter(child_node->children[0]));
                    auto child_node2_shared = std::shared_ptr<ASTInitVal>(child_node2);
                    node->init_vals.push_back(child_node2_shared);
                    break;
                }
                if (child_node->children_num == 1 && _STR_EQ(child_node->children[0]->name, "epsilon"))
                {
                    break;
                }
            }
            return node;
        }
    }
    /*
    FuncDef:   INT Ident LPAREN FuncFParams RPAREN Block
    {
        $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
    }
    |  FLOAT Ident LPAREN FuncFParams RPAREN Block
    {
        $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
    }
    | VOID Ident LPAREN FuncFParams RPAREN Block
    {
        $$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);
    }
    */
    /*

FuncFParams: FuncFParams COMMA FuncFParam
{
    $$ = node("FuncFParams", 3, $1, $2, $3);
}
| FuncFParam
{
    $$ = node("FuncFParams", 1, $1);
}
| {
    $$ = node("FuncFParams", 0);

}

FuncFParam: INT Ident
{
    $$ = node("FuncFParam", 2, $1, $2);
}
| FLOAT Ident
{
    $$ = node("FuncFParam", 2, $1, $2);
}
| INT Ident   ArrayParamList
{
    $$ = node("FuncFParam",  3, $1, $2, $3);
}
| FLOAT Ident   ArrayParamList
{
    $$ = node("FuncFParam",  3, $1, $2, $3);
}

    */
    else if (_STR_EQ(n->name, "FuncDef"))
    {
        auto node = new ASTFuncDef();
        if (_STR_EQ(n->children[0]->name, "int"))
        {
            node->type = TYPE_INT;
        }
        else if (_STR_EQ(n->children[0]->name, "float"))
        {
            node->type = TYPE_FLOAT;
        }
        else
        {
            node->type = TYPE_VOID;
        }

        node->id = n->children[1]->name;
        if (_STR_EQ(n->children[3]->children[0]->name, "epsilon"))
        {
            auto stmt_node =
                dynamic_cast<ASTBlock *>(transform_node_iter(n->children[5]));
            node->block = std::shared_ptr<ASTBlock>(stmt_node);

            return node;
        }
        auto node_child = n->children[3];
        // FuncFParams : FuncFParams COMMA FuncFParam | FuncFParam | epsilon
        // 构建stack
        std::stack<syntax_tree_node *> q;
        while (node_child->children_num == 3)
        {
            q.push(node_child->children[2]);
            node_child = node_child->children[0];
        }

        q.push(node_child->children[0]);
        while (!q.empty())
        {
            auto child_node = static_cast<ASTFuncFParam *>(transform_node_iter(q.top()));
            auto child_node_shared = std::shared_ptr<ASTFuncFParam>(child_node);
            node->params.push_back(child_node_shared);
            q.pop();
        }
        auto stmt_node =
            dynamic_cast<ASTBlock *>(transform_node_iter(n->children[5]));
        node->block = std::shared_ptr<ASTBlock>(stmt_node);

        return node;
    }
    else if (_STR_EQ(n->name, "FuncFParam"))
    {
        /*
         FuncFParam: INT Ident
    | FLOAT Ident
    | INT Ident   ArrayParamList
    | FLOAT Ident   ArrayParamList


    ArrayParamList:ArrayParamList LBRACKET Exp RBRACKET
    | LBRACKET Exp RBRACKET
    | LBRACKET RBRACKET
    */
        auto node = new ASTFuncFParam();

        if (_STR_EQ(n->children[0]->name, "int"))
        {
            node->type = TYPE_INT;
        }
        else if (_STR_EQ(n->children[0]->name, "float"))
        {
            node->type = TYPE_FLOAT;
        }
        else
        {
            node->type = TYPE_VOID;
        }
        node->id = n->children[1]->name;
        if (n->children_num == 2)
        {
            return node;
        }

        node->isarray = true;
        auto child_node = n->children[2];
        if (child_node->children_num == 2)
        {
            return node;
        }

        while (child_node->children_num == 4)
        {

            auto child_node2 = static_cast<ASTAddExp *>(transform_node_iter(child_node->children[2]->children[0]));
            auto child_node2_shared = std::shared_ptr<ASTAddExp>(child_node2);
            node->Exps.push_back(child_node2_shared);
            child_node = child_node->children[0];
            if (child_node->children_num == 3)
            {
                auto child_node2 = static_cast<ASTAddExp *>(transform_node_iter(child_node->children[1]->children[0]));
                auto child_node2_shared = std::shared_ptr<ASTAddExp>(child_node2);
                node->Exps.push_back(child_node2_shared);
                break;
            }
            if(child_node->children_num==2){
                
            }
        }
        // 把数组长度倒序
        std::reverse(node->Exps.begin(), node->Exps.end());
        return node;
    }
    // Block: LBRACE BlockItemList RBRACE
    // BlockItemList: BlockItemList  BlockItem | epsilon
    // BlockItem: ConstDecl | VarDecl | Stmt
    else if (_STR_EQ(n->name, "Block"))
    {
        auto node = new ASTBlock();
        auto list_ptr = n->children[1];
        std::stack<syntax_tree_node *> q;
        if (list_ptr->children_num == 2)
        {
            while (list_ptr->children_num == 2)
            {
                q.push(list_ptr->children[1]);
                list_ptr = list_ptr->children[0];
            }
        }
        while (!q.empty())
        {
            if (_STR_EQ(q.top()->children[0]->name, "ConstDecl"))
            {
                is_const = 1;
                auto childnode = q.top()->children[0];
                auto vardeflistnode = childnode->children[2];
                if (vardeflistnode->children_num == 1)
                {
                    auto node_vardef = std::shared_ptr<ASTVarDef>(dynamic_cast<ASTVarDef *>(transform_node_iter(vardeflistnode->children[0])));
                    if (_STR_EQ(childnode->children[1]->name, "int"))
                    {
                        node_vardef->type_ = TYPE_INT;
                    }
                    else
                    {
                        node_vardef->type_ = TYPE_FLOAT;
                    }
                    //  node_vardef->is_const_or_not = true;
                    node->Stmts.push_back(node_vardef);
                }
                while (vardeflistnode->children_num == 3)
                {
                    auto node_vardef = std::shared_ptr<ASTVarDef>(dynamic_cast<ASTVarDef *>(transform_node_iter(vardeflistnode->children[2])));
                    if (_STR_EQ(childnode->children[1]->name, "int"))
                    {
                        node_vardef->type_ = TYPE_INT;
                        node_vardef->is_const_or_not = true;
                    }
                    else
                    {
                        node_vardef->type_ = TYPE_FLOAT;
                        node_vardef->is_const_or_not = true;
                    }
                    node->Stmts.push_back(node_vardef);
                    vardeflistnode = vardeflistnode->children[0];
                    if (vardeflistnode->children_num == 1)
                    {
                        if (_STR_EQ(childnode->children[0]->name, "int"))
                        {
                            node_vardef->type_ = TYPE_INT;
                            node_vardef->is_const_or_not = true;
                        }
                        else
                        {
                            node_vardef->type_ = TYPE_FLOAT;
                            node_vardef->is_const_or_not = true;
                        }
                        node->Stmts.push_back(node_vardef);
                    }
                }

                /*
                                auto childnode = q.top()->children[0];
                                auto vardeflistnode = childnode->children[2];
                                std::stack<syntax_tree_node *> node_stack;
                                while (vardeflistnode->children_num == 3)
                                {
                                    node_stack.push(vardeflistnode->children[2]);
                                    vardeflistnode = vardeflistnode->children[0];
                                }
                                node_stack.push(vardeflistnode->children[0]);
                                while (!node_stack.empty())
                                {
                                    auto child_node = dynamic_cast<ASTVarDef *>(transform_node_iter(node_stack.top()));
                                    auto child_node_shared = std::shared_ptr<ASTVarDef>(child_node);
                                    node->Stmts.push_back(child_node_shared);
                                    node_stack.pop();
                                }
                                for (auto decl : node->Stmts)
                                {
                                    ASTVarDef *var_def = dynamic_cast<ASTVarDef *>(decl.get());

                                    var_def->is_const_or_not = true;
                                    if (_STR_EQ(childnode->children[1]->name, "int"))
                                    {
                                        var_def->type_ = TYPE_INT;
                                    }
                                    else
                                    {
                                        var_def->type_ = TYPE_FLOAT;
                                    }
                                } */
                is_const = 0;
            }
            else if (_STR_EQ(q.top()->children[0]->name, "VarDecl"))
            {

                auto childnode = q.top()->children[0];
                auto vardeflistnode = childnode->children[1];
                while (vardeflistnode->children_num == 3)
                {
                    auto node_vardef = std::shared_ptr<ASTVarDef>(dynamic_cast<ASTVarDef *>(transform_node_iter(vardeflistnode->children[2])));
                    if (_STR_EQ(childnode->children[0]->name, "int"))
                    {
                        node_vardef->type_ = TYPE_INT;
                    }
                    else
                    {
                        node_vardef->type_ = TYPE_FLOAT;
                    }
                    node->Stmts.push_back(node_vardef);
                    vardeflistnode = vardeflistnode->children[0];
                }
                auto node_vardef = std::shared_ptr<ASTVarDef>(dynamic_cast<ASTVarDef *>(transform_node_iter(vardeflistnode->children[0])));

                if (_STR_EQ(childnode->children[0]->name, "int"))
                {
                    node_vardef->type_ = TYPE_INT;
                }
                else
                {
                    node_vardef->type_ = TYPE_FLOAT;
                }
                node->Stmts.push_back(node_vardef);
            }
            else if (_STR_EQ(q.top()->children[0]->name, "Stmt"))
            {
                auto childnode = q.top()->children[0];
                auto stmt_node = dynamic_cast<ASTStmt *>(transform_node_iter(childnode));
                auto stmt_node_shared = std::shared_ptr<ASTStmt>(stmt_node);
                node->Stmts.push_back(stmt_node_shared);
            }
            q.pop();
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Stmt"))
    {
        if (_STR_EQ(n->children[0]->name, ";"))
        {
            auto node = new ASTEmptyStmt();
            return node;
        }
        if (_STR_EQ(n->children[0]->name, "return"))
        {
            auto node = new ASTReturnStmt();
            if (n->children_num == 3)
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(n->children[1]));
                auto child_node_shared = std::shared_ptr<ASTExp>(child_node);
                node->expression = child_node_shared;
            }
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "if"))
        {
            auto node = new ASTIfStmt();
            auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0]));
            node->expression = std::shared_ptr<ASTLOrExp>(cond_node);
            node->if_statement = std::shared_ptr<ASTStmt>(dynamic_cast<ASTStmt *>(transform_node_iter(n->children[4])));
            if (n->children_num == 7)
            {
                node->else_statement = std::shared_ptr<ASTStmt>(dynamic_cast<ASTStmt *>(transform_node_iter(n->children[6])));
            }
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "continue"))
        {

            auto m = new ASTContinueStmt();
            m->type = "continue";
            return m;
        }
        else if (_STR_EQ(n->children[0]->name, "break"))
        {
            auto m = new ASTBreakStmt();
            m->type = "break";
            return m;
        }
        else if (_STR_EQ(n->children[0]->name, "LVal"))
        {
            auto node = new ASTAssignExpression();
            node->var = std::shared_ptr<ASTLVal>(static_cast<ASTLVal *>(transform_node_iter(n->children[0])));
            node->expression = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(n->children[2]->children[0])));
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "Exp"))
        {
            auto node = new ASTExpStmt();
            node->expression = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "Block"))
        {
            return transform_node_iter(n->children[0]);
        }
        else if (_STR_EQ(n->children[0]->name, "while"))
        {
            auto node = new ASTWhileStmt();
            node->expression = std::shared_ptr<ASTLOrExp>(static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0])));
            node->statement = std::shared_ptr<ASTStmt>(dynamic_cast<ASTStmt *>(transform_node_iter(n->children[4])));
            // auto stmtnode = new ASTExpStmt();
            //  stmtnode->expression = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[4]->children[0])));
            //  node->statement = std::shared_ptr<ASTStmt>(stmtnode);

            return node;
        }
    }
    // LVal : Ident ArrayExpList
    /*      ArrayExpList:  ArrayExpList LBRACKET Exp RBRACKET
    {
        $$ = node("ArrayExpList", 4, $1, $2, $3, $4);
    }
    |
    {
        $$ = node("ArrayExpList",  0);
    } */
    else if (_STR_EQ(n->name, "LVal"))
    {
        auto node = new ASTLVal();
        node->id = n->children[0]->name;
        auto child_node = n->children[1];
        if (_STR_EQ(child_node->children[0]->name, "epsilon"))
        {
            return node;
        }
        while (child_node->children_num == 4)
        {
            auto child_node2 = static_cast<ASTAddExp *>(transform_node_iter(child_node->children[2]));
            auto child_node2_shared = std::shared_ptr<ASTAddExp>(child_node2);
            node->Exps.push_back(child_node2_shared);
            child_node = child_node->children[0];
        }
        // 把数组长度倒序
        std::reverse(node->Exps.begin(), node->Exps.end());
        return node;
    }

    else if (_STR_EQ(n->name, "UnaryExp"))
    {

        if (n->children_num == 1) // PrimaryExp
        {
            auto node = new ASTUnaryExp();
            auto newnode = n->children[0];

            // PrimaryExp: LPAREN Exp RPAREN | LVal | IntConst |FloatConst

            if (newnode->children_num == 3)
            {
                node->exp = std::shared_ptr<ASTExp>(static_cast<ASTExp *>(transform_node_iter(newnode->children[1])));
            }
            if (newnode->children_num == 1)
            {
                if (_STR_EQ(newnode->children[0]->name, "LVal"))
                {
                    node->lval = std::shared_ptr<ASTLVal>(static_cast<ASTLVal *>(transform_node_iter(newnode->children[0])));
                }
                else
                {
                    auto name = newnode->children[0]->name;
                    auto num_node = new ASTNumber();
                    num_node->type = TYPE_INT;
                    // 把name转成数字后,判断是不是整数
                    for (int i = 0; i < (int)(strlen(name)); i++)
                    {
                        if (name[i] == '.')
                        {
                            num_node->type = TYPE_FLOAT;
                            break;
                        }
                    }
                    if (num_node->type == TYPE_INT)
                    // 判断是不是16进制
                    {
                        if (name[0] == '0' && (name[1] == 'x' || name[1] == 'X'))
                        {
                            // 取第二位到最后一位
                            std::string str = std::string(name).substr(2);
                            num_node->i_val = std::stoi(str, 0, 16);
                        }
                        // 长度大于1且第一位是0
                        else if (name[0] == '0' && strlen(name) > 1)
                        {
                            std::string str = std::string(name).substr(1);
                            num_node->i_val = std::stoi(str, 0, 8);
                        }
                        else
                        {
                            num_node->i_val = std::stoi(name);
                        }
                    }
                    else
                    {
                        // 03.141592653589793转换成0x400921FB60000000
                        // 利用std::hexfloat
                        std::stringstream ss;
                        ss << std::hexfloat << std::stof(name);
                        std::string str = ss.str();
                        // str是0x1.921fb6p+1
                        // 把str转成0x400921FB60000000

                        num_node->f_val = std::stof(str);
                    }
                    node->number = std::shared_ptr<ASTNumber>(num_node);
                }
            }
            return node;
        }
        else if (n->children_num == 2) // UnaryOp UnaryExp
        {
            auto node = new ASTUnaryExp();
            if (_STR_EQ(n->children[0]->children[0]->name, "-"))
            {
                node->unary_op = OP_NEG;
            }
            if (_STR_EQ(n->children[0]->children[0]->name, "!"))
            {
                node->unary_op = OP_NOT;
            }
            if (_STR_EQ(n->children[0]->children[0]->name, "+"))
            {
                node->unary_op = OP_POS;
            }
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[1])));
            return node;
        }
        else if (n->children_num == 3) // Ident ()
        {
            auto node = new ASTUnaryExp();
            node->id = n->children[0]->name;
            return node;
        }
        else if (n->children_num == 4) // Ident (FuncRParams)
        {
            auto node = new ASTUnaryExp();
            node->id = n->children[0]->name;
            // flatten args
            if (_STR_EQ(n->children[2]->name, "FuncRParams"))
            {
                auto list_ptr = n->children[2];
                // list_ptr是FuncRParams
                auto s = std::queue<syntax_tree_node *>();
                // FuncRParams : Exp ComExp
                s.push(list_ptr->children[0]);
                list_ptr = list_ptr->children[1];
                // ComExp : COMMA Exp ComExp | ε
                while (list_ptr->children_num == 3)
                {
                    s.push(list_ptr->children[1]);
                    list_ptr = list_ptr->children[2];
                }

                while (!s.empty())
                {
                    auto expr_node =
                        static_cast<ASTExp *>(transform_node_iter(s.front()));
                    auto expr_node_ptr = std::shared_ptr<ASTExp>(expr_node);
                    node->args.push_back(expr_node_ptr);
                    s.pop();
                }
            }
            return node;
        }
    }
    else if (_STR_EQ(n->name, "MulExp"))
    {
        auto node = new ASTMulExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "*"))
            {
                node->mul_op = OP_MUL;
            }
            if (_STR_EQ(n->children[1]->name, "/"))
            {
                node->mul_op = OP_DIV;
            }
            if (_STR_EQ(n->children[1]->name, "%"))
            {
                node->mul_op = OP_MOD;
            }
        }
        if (n->children_num == 1)
        {
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[n->children_num - 1])));
        }
        if (n->children_num == 3)
        {
            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[0])));
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(static_cast<ASTUnaryExp *>(transform_node_iter(n->children[2])));
        }

        return node;
    }
    else if (_STR_EQ(n->name, "AddExp"))
    {
        // AddExp → MulExp | AddExp ('+' | '−') MulExp
        auto node = new ASTAddExp();
        if (n->children_num == 1)
        {
            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[0])));
            return node;
        }
        else if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "+"))
            {
                node->add_op = OP_PLUS;
            }
            if (_STR_EQ(n->children[1]->name, "-"))
            {
                node->add_op = OP_MINUS;
            }
            node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[0])));

            node->mul_exp = std::shared_ptr<ASTMulExp>(static_cast<ASTMulExp *>(transform_node_iter(n->children[2])));
        }
        return node;
    }

    else if (_STR_EQ(n->name, "RelExp"))
    {
        auto node = new ASTRelExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "<"))
            {
                node->rel_op = OP_LT;
            }
            if (_STR_EQ(n->children[1]->name, ">"))
            {
                node->rel_op = OP_GT;
            }
            if (_STR_EQ(n->children[1]->name, "<="))
            {
                node->rel_op = OP_LE;
            }
            if (_STR_EQ(n->children[1]->name, ">="))
            {
                node->rel_op = OP_GE; // 需要定义
            }
        }
        node->add_exp = std::shared_ptr<ASTAddExp>(static_cast<ASTAddExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "EqExp"))
    {
        auto node = new ASTEqExp();
        if (n->children_num == 3)
        {
            if (_STR_EQ(n->children[1]->name, "=="))
            {
                node->eq_op = OP_EQ;
            }
            if (_STR_EQ(n->children[1]->name, "!="))
            {
                node->eq_op = OP_NEQ;
            }
        }
        node->rel_exp = std::shared_ptr<ASTRelExp>(static_cast<ASTRelExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[0])));
        }

        return node;
    }
    else if (_STR_EQ(n->name, "LAndExp"))
    {
        auto node = new ASTLAndExp();
        node->eq_exp = std::shared_ptr<ASTEqExp>(static_cast<ASTEqExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "LOrExp"))
    {
        auto node = new ASTLOrExp();
        node->land_exp = std::shared_ptr<ASTLAndExp>(static_cast<ASTLAndExp *>(transform_node_iter(n->children[n->children_num - 1])));
        if (n->children_num == 3)
        {
            node->lor_exp = std::shared_ptr<ASTLOrExp>(static_cast<ASTLOrExp *>(transform_node_iter(n->children[0])));
        }
        return node;
    }
    else if (_STR_EQ(n->name, "Exp"))
    {
        return transform_node_iter(n->children[0]);
    }
    else if (_STR_EQ(n->name, "ConstExp"))
    {
        return transform_node_iter(n->children[0]);
    }
}
Value *ASTSTARTPOINT::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTFuncDef ::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTVarDef::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTInitVal::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTFuncFParam::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBlock::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLVal::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTNumber::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTUnaryExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAddExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTRelExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTEqExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLAndExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLOrExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTMulExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAssignExpression::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTReturnStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTIfStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTContinueStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBreakStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTWhileStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTEmptyStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTExpStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
#define _DEBUG_PRINT_N_(N)                \
    {                                     \
        std::cout << std::string(N, '-'); \
    }

Value *ASTPrinter::visit(ASTSTARTPOINT &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "startpoint" << std::endl;
    add_depth();
    for (auto global_def : node.global_defs)
    {
        global_def->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTFuncDef &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "func def" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    for (auto func_fparam : node.params)
    {
        func_fparam->accept(*this);
    }
    node.block->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTVarDef &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "var def" << std::endl;
    add_depth();
    std::cout << node.id;
    for (auto length : node.arr_len)
    {
        std::cout << "[";
        length->accept(*this);
        std::cout << "]";
    }
    if (node.is_init)
    {
        node.init_val->accept(*this);
    }
    std::cout << ";" << std::endl;
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTInitVal &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "init val" << std::endl;
    add_depth();
    if (node.init_vals.size() > 0)
    {
        for (auto init_val : node.init_vals)
        {
            init_val->accept(*this);
        }
    }
    else
    {
        node.expression->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTFuncFParam &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "func fparam" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.Exps.size() > 0)
    {
        for (auto exp : node.Exps)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTBlock &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "block" << std::endl;
    add_depth();
    for (auto decl : node.Stmts)
    {
        decl->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTReturnStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "return stmt" << std::endl;
    add_depth();
    if (node.expression != nullptr)
    {
        node.expression->accept(*this);
    }
    remove_depth();

    return nullptr;
}
Value *ASTPrinter::visit(ASTEmptyStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "empty stmt" << std::endl;
    add_depth();
    remove_depth();

    return nullptr;
}

Value *ASTPrinter::visit(ASTIfStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "if stmt" << std::endl;
    add_depth();
    node.expression->accept(*this);
    node.if_statement->accept(*this);
    if (node.else_statement != nullptr)
    {
        node.else_statement->accept(*this);
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTWhileStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "iteration-stmt" << std::endl;
    add_depth();
    node.expression->accept(*this);
    node.statement->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTExpStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "Expstmt" << std::endl;
    add_depth();
    node.expression->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTContinueStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "continue stmt" << std::endl;
    return nullptr;
}

Value *ASTPrinter::visit(ASTBreakStmt &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "break stmt" << std::endl;
    return nullptr;
}

Value *ASTPrinter::visit(ASTAssignExpression &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "assignment stmt" << std::endl;
    add_depth();
    node.var->accept(*this);
    node.expression->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLVal &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "lval" << std::endl;
    add_depth();
    std::cout << node.id << std::endl;
    if (node.Exps.size() > 0)
    {
        for (auto exp : node.Exps)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTNumber &node)
{
    _DEBUG_PRINT_N_(depth);
    if (node.type == TYPE_INT)
    {
        std::cout << "num (int): " << node.i_val << std::endl;
    }
    else if (node.type == TYPE_FLOAT)
    {
        std::cout << "num (float): " << node.f_val << std::endl;
    }
    else
    {
        _AST_NODE_ERROR_
    }
    return nullptr;
}

Value *ASTPrinter::visit(ASTUnaryExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "unary exp" << std::endl;
    add_depth();
    if (node.unary_exp != nullptr)
    {
        if (node.unary_op == OP_NEG)
        {
            std::cout << "minus" << std::endl;
        }
        else if (node.unary_op == OP_NOT)
        {
            std::cout << "not" << std::endl;
        }
        else if (node.unary_op == OP_POS)
        {
            std::cout << "plus" << std::endl;
        }
        node.unary_exp->accept(*this);
    }

    if (node.lval != nullptr)
    {
        node.lval->accept(*this);
    }
    if (node.number != nullptr)
    {
        node.number->accept(*this);
    }

    if (node.id != "")
    {
        std::cout << "call: " << node.id << std::endl;
        for (auto exp : node.args)
        {
            exp->accept(*this);
        }
    }
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTMulExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "mul exp" << std::endl;
    add_depth();
    if (node.mul_exp != nullptr)
    {
        node.mul_exp->accept(*this);
    }
    node.unary_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTAddExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "add exp" << std::endl;
    add_depth();
    if (node.add_exp != nullptr)
    {
        node.add_exp->accept(*this);
    }
    node.mul_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTRelExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "rel exp" << std::endl;
    add_depth();
    if (node.rel_exp != nullptr)
    {
        node.rel_exp->accept(*this);
    }
    node.add_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTEqExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "eq exp" << std::endl;
    add_depth();
    if (node.eq_exp != nullptr)
    {
        node.eq_exp->accept(*this);
    }
    node.rel_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLAndExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "land exp" << std::endl;
    add_depth();
    if (node.land_exp != nullptr)
    {
        node.land_exp->accept(*this);
    }
    node.eq_exp->accept(*this);
    remove_depth();
    return nullptr;
}

Value *ASTPrinter::visit(ASTLOrExp &node)
{
    _DEBUG_PRINT_N_(depth);
    std::cout << "lor exp" << std::endl;
    add_depth();
    if (node.lor_exp != nullptr)
    {
        node.lor_exp->accept(*this);
    }
    node.land_exp->accept(*this);
    remove_depth();
    return nullptr;
}
