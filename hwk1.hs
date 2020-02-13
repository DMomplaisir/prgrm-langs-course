-- ProjectA 

-- Write a function called partA to return a list of all even positive intergers. 


-- PartB take a list, and give doubles of intergers 

-- Have a function to check if item is negative, double otherwise, then filter 0
doublePositive :: Int -> [Int]
doublePositive x  
    | x > 0 = [2 * x]
    | otherwise = []

isGreaterThanOne n = n > 0

partB :: [Int] -> [Int]
partB [] = []
partB (x:xs) = (doublePositive x) : iterate (doublePositive xs)

