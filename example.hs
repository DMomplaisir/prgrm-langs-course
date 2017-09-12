inc1 :: Int -> Int
inc1 x = x + 1

len :: [a] -> Int
len [] = 0
len (x:xs) = 1 + len xs
