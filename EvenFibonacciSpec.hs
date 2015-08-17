module EvenFibonacciSpec where

import Test.Hspec
import EvenFibonacci

main :: IO()
main  = hspec $ do
    describe "Fibonacci sequence" $ do
        it "obtain the 6th element" $
            fib 6 `shouldBe` 13
        it "sum of even numbers whose values not exceed 10" $
            sumFibSequenceEvenNumbers 10 `shouldBe` 10
        it "sum of even numbers whose values not eceed 4.000.000" $
            sumFibSequenceEvenNumbers 4000000 `shouldBe` 4613732
