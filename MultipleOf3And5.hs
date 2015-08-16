module MultipleOf3And5 where

sum :: Int -> Int
sum n = Prelude.sum $ filter isMultipleOf3Or5 numbers
        where isMultipleOf3Or5 = (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)
              numbers = [1..n-1]
