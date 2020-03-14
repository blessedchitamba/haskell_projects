module ExprCombinations where
import PartB_question1
import PartB_question4

exprs :: [Int] -> [Expr]

combine :: Expr -> Expr -> [Expr]
combine l r = [App o l r | o <- [Add,Mul]]

exprs [] = []
exprs [n] = [Val n]
exprs ns = [e | (ls,rs) <- split ns, l <- exprs ls, r <- exprs rs, e <- combine l r]

