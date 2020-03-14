module PartB_question1 where

data Expr = Val Int| App Op Expr Expr
                    deriving(Eq, Show)
data Op = Add | Mul
              deriving(Eq, Show)

eval :: Expr -> Int
eval(Val x) = x
eval(App o x y) | o == Add  =eval(x) + eval(y)
                | o == Mul  =eval(x) * eval(y)


values :: Expr -> [Int]
values(Val x) = x:[]
values(App o x y) = values(x) ++ values(y)