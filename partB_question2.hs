delete :: Int -> [Int] -> [Int]
delete _ [] = []
delete y (x:xs) | y==x  =xs
                |otherwise  =delete y xs
