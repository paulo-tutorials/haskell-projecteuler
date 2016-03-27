module LargestPrimeFactorSpec where

import Test.Hspec
import LargestPrimeFactor

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "Primes" $ do
        it "return true when check if 43 is prime" $
            isPrime 43 `shouldBe` True
        it "return false when check if 39 is prime" $
            isPrime 39 `shouldBe` False
        describe "factors" $ do
            it "return list of prime factors of the number 40" $
                primeFactors 40 `shouldBe` [2,5]
            it "return the Largest Prime Factor of 13195" $
                largestPrime 13195  `shouldBe` 29
            it "return the Largest Prime Factor of 600851475143" $
                largestPrime 600851475143  `shouldBe` 6857