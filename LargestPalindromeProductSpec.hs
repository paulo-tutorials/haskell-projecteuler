module LargestPalindromeProductSpec where

import Test.Hspec
import LargestPalindromeProduct

main :: IO()
main = hspec $
    describe "Palindrones" $ do
        it "return the largest palindrone made from the product of two 2-digit number" $
            largestPalindrome 100 `shouldBe` 9009
        it "return the largest palindrone made from the product of two 3-digit number" $
            largestPalindrome 1000 `shouldBe` 906609