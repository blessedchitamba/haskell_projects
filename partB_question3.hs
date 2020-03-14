perms :: [Int] -> [[Int]]
perms[] = [[]]
perms xs = do x <- xs
                let l = delete x xs
                ls <- perms l
                return $ x:ls