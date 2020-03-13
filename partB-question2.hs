delete :: Int -> [Int] -> [Int]
delete y (x:xs) | y==x  =xs
                |otherwise  =delete y xs
