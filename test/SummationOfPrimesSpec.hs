module SummationOfPrimesSpec where

import Test.Hspec
import SummationOfPrimes

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "sum of primes" $ do
        it "return the sum primes below 10" $
            sumOfPrimesBelow 10 `shouldBe` 17

        it "return the sum primes below 10" $
            sumOfPrimesBelow 2000000 `shouldBe` 142913828922
