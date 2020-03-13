data Expr = Val Integer| App Op Expr Expr
                    deriving(Eq, Show)
data Op = Add | Mul
              deriving(Eq, Show)

eval :: Expr -> Integer
eval(Val x) = x
eval(App o x y) | o == Add  =eval(x) + eval(y)
                | o == Mul  =eval(x) * eval(y)


values :: Expr -> [Integer]
values(Val x) = x:[]
values(App o x y) = values(x) ++ values(y)