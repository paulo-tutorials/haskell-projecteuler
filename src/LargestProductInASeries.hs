module LargestProductInASeries where

import Data.Char

digits :: Integer -> [Integer]
digits n = map (\x -> toInteger $ digitToInt x) $ show n

productsOfASerie :: [Integer] -> Integer -> [Integer]
productsOfASerie serie 1 = serie
productsOfASerie serie sequenceLength = zipWith (*) serie $ productsOfASerie (tail serie) (sequenceLength -1)

largestProductOfTheSerie :: Integer -> Integer -> Integer
largestProductOfTheSerie  serie sequenceLength = maximum $ productsOfASerie (digits serie) sequenceLength
