module TenThousandAndOnestPrimeSpec where

import Test.Hspec
import TenThousandAndOnestPrime 

main :: IO ()
main = hspec $
    describe "Primes" $ do
        it "return the 6th prime" $
            nthPrime 6 `shouldBe` 13

        it "return the 10001th prime" $
            nthPrime 10001 `shouldBe` 104743 
