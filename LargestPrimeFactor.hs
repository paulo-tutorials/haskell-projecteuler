module LargestPrimeFactor where

naturalNumbers = [1..]

naturalNumbersFactors :: Integer -> [Integer]
naturalNumbersFactors n = takeWhile (\x -> x*x <= n) $ tail naturalNumbers

isPrime :: Integer -> Bool 
isPrime n = all (\x -> n `mod` x /= 0) $ naturalNumbersFactors n

primeFactors :: Integer -> [Integer]
primeFactors 2 = [2] 
primeFactors 3 = [3]
primeFactors n = filter isFactor $ naturalNumbersFactors n
                    where isFactor = (\x -> n `mod` x == 0 && isPrime(x))

largestPrime :: Integer -> Integer 
largestPrime n = last $ primeFactors n
