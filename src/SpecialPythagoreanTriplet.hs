module SpecialPythagoreanTriplet where

numbersBelow :: Int -> [Int]
numbersBelow n = [n, n-1..1]

square :: Int -> Int
square n = n*n

isPythagoreanTriplet :: (Int,Int,Int) -> Bool
isPythagoreanTriplet (a,b,c) = (square a) + (square b) == (square c)

customCartProd :: [Int] -> [Int] -> [Int] -> [(Int,Int,Int)]
customCartProd xs ys zs = [(x,y,z) | x <- xs, y <- ys, z <- zs, x < y && y < z && (square x) + (square y) == (square z)]

pythagoreanTrianglesWithSideBelow :: Int -> [(Int,Int,Int)]
pythagoreanTrianglesWithSideBelow n = customCartProd numbers  numbers numbers
    where numbers = numbersBelow n

pythagoreanTripletThatSumSideIs :: Int -> (Int,Int,Int)
pythagoreanTripletThatSumSideIs n = head $ filter (\(x, y, z) -> x + y + z == n) $ (pythagoreanTrianglesWithSideBelow n)

