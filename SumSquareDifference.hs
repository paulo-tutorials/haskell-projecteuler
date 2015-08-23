module SumSquareDifference where

naturalNumbers = [1..]

naturalNumbersUntil :: Integer -> [Integer]
naturalNumbersUntil n = takeWhile (\x -> x <= n) naturalNumbers

square :: Integer -> Integer
square n = n*n

sumOfNaturalNumbersSquare :: Integer -> Integer
sumOfNaturalNumbersSquare n = sum $ map square $ naturalNumbersUntil n

squareOfTheSumOfNaturalNumbers :: Integer -> Integer
squareOfTheSumOfNaturalNumbers n = square $ foldl (+) 0 $ naturalNumbersUntil n

