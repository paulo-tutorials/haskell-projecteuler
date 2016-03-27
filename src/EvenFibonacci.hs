module EvenFibonacci where

fibs = 1:1:zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs !! n

fibSequenceBelowN ::Int -> [Int] 
fibSequenceBelowN n = tail $ takeWhile (< n) fibs

sumFibSequenceEvenNumbers :: Int -> Int
sumFibSequenceEvenNumbers n = sum $ filter even $ fibSequenceBelowN n
