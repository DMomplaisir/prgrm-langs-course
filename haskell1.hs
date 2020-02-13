 -- GROUP members: Dylan, Feriel, and Niamani 
classify :: Int -> String
classify x 
    | x > 0 = "positive"
    | x < 0 = "negative"
    | otherwise = "zero"

classifyMap1 :: [Int] -> [String]
classifyMap1 [] = []
classifyMap1 (x:xs) = ((classify x) : classifyMap1 xs)

classifyMap2 :: [Int] -> [String]
classifyMap2 [] = []
classifyMap2(x:xs) = classify x : map classify xs

times :: Int -> Int -> Int
times x y = x * y

product1 :: [Int] -> Int
product1 [] = 1
product1 (x:xs) = x * product1(xs)


helperProduct2 :: [Int] -> Int -> Int -- Check this back out 
helperProduct2 [] y = y
helperProduct2 (x : xs) y = helperProduct2 (xs) (times x y)


product2 :: [Int] -> Int
product2 [] = 1
product2 (x : xs) = helperProduct2 xs x

product3 :: [Int] -> Int
product3 list = foldr (*) 1 list