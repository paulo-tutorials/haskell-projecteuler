module SpecialPythagoreanTripletSpec where

import Test.Hspec
import SpecialPythagoreanTriplet

main :: IO ()
main = hspec $ do
    describe "Pythagorean Triplet" $ do
        it "return true when verify if the sides 3, 4 and 5 form a Pythagorean Triplet" $
            isPythagoreanTriplet (3,4,5) `shouldBe` True 

        it "return the triangle whose sides have sum equal 1000" $
            pythagoreanTripletThatSumSideIs 1000  `shouldBe` (200,375,425)
