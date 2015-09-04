module SummationOfPrimes where

naturalNumbers = [1..]

naturalNumbersWhoseSquareIsBelow :: Integer -> [Integer]
naturalNumbersWhoseSquareIsBelow n = takeWhile (\x -> x*x <= n) $ tail naturalNumbers

isPrime :: Integer -> Bool
isPrime 1 = False
isPrime n = all (\x -> n `mod` x /= 0) $ naturalNumbersWhoseSquareIsBelow n

primes = filter isPrime naturalNumbers

primesBelow :: Integer -> [Integer]
primesBelow n = takeWhile (\x -> x <= n) primes

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = foldl (+) 0 (primesBelow n)
