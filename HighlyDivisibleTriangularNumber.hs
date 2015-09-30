module HighlyDivisibleTriangularNumber where

naturalNumbers = [1..]

numbersBelow :: Int -> [Int]
numbersBelow n = takeWhile (< n) naturalNumbers

sequenceOfNthTriangle :: Int -> [Int]
sequenceOfNthTriangle n = take n naturalNumbers

factorsOf :: Int -> [Int]
factorsOf n = filter isFactorOfN (takeWhile isFactorCandidate $ numbersBelow n) ++ [n]
                where   isFactorOfN x = n `mod` x == 0
                        isFactorCandidate x = 2*x <= n

nthTriangle :: Int -> Int
nthTriangle n = sum $ sequenceOfNthTriangle n 

triangleFactorsOfNthNumber :: Int -> [Int]
triangleFactorsOfNthNumber n = factorsOf $ nthTriangle n

triangles = map nthTriangle naturalNumbers

trianglesWithSequenceOver :: Int -> [Int]
trianglesWithSequenceOver n = dropWhile (\x -> (length $ factorsOf x) < n)  triangles

firstTriangleWithOverNDivisors :: Int -> Int
firstTriangleWithOverNDivisors n = head $ trianglesWithSequenceOver n
