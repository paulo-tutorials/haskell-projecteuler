module MultipleOf3And5Spec where

import Test.Hspec
import MultipleOf3And5
import Prelude hiding (sum)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "sum of natural numbers, multiples of 3 and 5" $ do
        it "return the sum below 10" $
           sum 10 `shouldBe` 23
        
        it "return the sum below 1000" $
            sum 1000 `shouldBe` 233168
