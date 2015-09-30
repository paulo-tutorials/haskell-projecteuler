module HighlyDivisibleTriangularNumberSpec where

import Test.Hspec
import HighlyDivisibleTriangularNumber

main :: IO ()
main = hspec $
    describe "Triangle factors" $ do
        it "return the three divisors of the number 4th triangle" $
            triangleFactorsOfNthNumber 4 `shouldBe` [1,2,5,10]

        it "return the first triangle with that have over 5 divisors" $
            firstTriangleWithOverNDivisors 5 `shouldBe` 28

        it "return the first triangle with that have over 100 divisors" $
            firstTriangleWithOverNDivisors 100 `shouldBe` 73920
