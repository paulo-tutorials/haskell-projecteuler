module SmallestMultipleSpec where

import Test.Hspec
import SmallestMultiple

main :: IO()
main = hspec $
    describe "number multiples" $ do
        it "return true when check if 720 is multiple of the numbers from 1 to 6" $
            isMultipleOfAll 720 [1..6] `shouldBe` True
        it "return the smallest number that can be divided by each number from 1 to 10" $
            smallestMultiple 10 `shouldBe` 2520
        it "return the smallest number that can be divided by each number from 1 to 20" $
            smallestMultiple 20 `shouldBe` 232792560
