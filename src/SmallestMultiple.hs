module SmallestMultiple where

import LargestPrimeFactor (primeFactorsUntil)

isMultipleOfAll :: Integer -> [Integer] -> Bool
isMultipleOfAll n xs = all (\x -> n >= x && isMultipleOf n x) xs

isMultipleOf :: Integer -> Integer -> Bool 
isMultipleOf n m = n `mod` m == 0

naturalNumbers = [1..]
naturalNumbersBelow n = [n, n-1..1]

multiplesOf :: [Integer] -> [Integer]
multiplesOf xs = dropWhile (\x -> not $ isMultipleOfAll x xs) naturalNumbers

numbersToCheck :: Integer -> [Integer]
numbersToCheck n = [1..n]

primeFactorsOfNumbers :: [Integer] -> [Integer]
primeFactorsOfNumbers xs = foldl (++) [] $ filter (\xs -> length xs  < 2) $map (\x -> primeFactorsUntil x) xs

smallestMultiple :: Integer -> Integer
smallestMultiple n = multiplyFactors $ primeFactorsOfNumbers $ numbersToCheck n
    where multiplyFactors xs = foldl (*) 1 xs 
