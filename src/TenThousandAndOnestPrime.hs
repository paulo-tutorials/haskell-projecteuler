module TenThousandAndOnestPrime where

naturalNumbers = [1..]

naturalNumbersWhoseSquareIsBelow :: Integer -> [Integer]
naturalNumbersWhoseSquareIsBelow n = takeWhile (\x -> x*x <= n) $ tail naturalNumbers

isPrime :: Integer -> Bool
isPrime 1 = False
isPrime n = all (\x -> n `mod` x /= 0) $ naturalNumbersWhoseSquareIsBelow n

primes = filter isPrime naturalNumbers

nthPrime :: Int -> Integer
nthPrime n = primes !! (n -1)
