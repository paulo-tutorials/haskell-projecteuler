module SmallestMultiple where

isMultipleOfAll :: Int -> [Int] -> Bool
isMultipleOfAll n xs = all (\x -> n >= x && isMultipleOf n x) xs

isMultipleOf :: Int -> Int -> Bool 
isMultipleOf n m = n `mod` m == 0

naturalNumbers = [1..]
naturalNumbersBelow n = [n, n-1..1]

multiplesOf :: [Int] -> [Int] 
multiplesOf xs = dropWhile (\x -> not $ isMultipleOfAll x xs) naturalNumbers

numbersToCheck :: Int -> [Int]
numbersToCheck n = [1..n]

smallestMultiple :: Int -> Int
smallestMultiple n = head $  multiplesOf $ numbersToCheck n
