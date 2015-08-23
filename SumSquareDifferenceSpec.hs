module SumSquareDifferenceSpec where

import Test.Hspec
import SumSquareDifference

main :: IO ()
main = hspec $
    describe "Square Numbers" $ do
        it "return the square sum's of numbers from 1 to 10" $
            sumOfNaturalNumbersSquare 10 `shouldBe` 385

        it "return the square of the sum of the numbers from 1 to 10" $
            squareOfTheSumOfNaturalNumbers 10 `shouldBe` 3025

        it "return the difference between the sum of the squares of the first ten natural numbers and the square of the sum" $
            (squareOfTheSumOfNaturalNumbers 10) - (sumOfNaturalNumbersSquare 10) `shouldBe` 2640

        it "return the difference between the sum of the squares of the first one humdred natural numbers and the square of the sum" $
            (squareOfTheSumOfNaturalNumbers 100) - (sumOfNaturalNumbersSquare 100) `shouldBe` 25164150 
