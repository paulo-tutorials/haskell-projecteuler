module LargestPrimeFactor where

naturalNumbers = [1..]

naturalNumbersFactors n = takeWhile (\x -> x*x <= n) $ tail naturalNumbers

isPrime n = all (\x -> n `mod` x /= 0) $ naturalNumbersFactors n

primeFactors n = filter isFactor $ naturalNumbersFactors n
                    where isFactor = (\x -> n `mod` x == 0 && isPrime(x))

largestPrime n = last $ primeFactors n