module LargestPalindromeProduct where

numList :: Int -> [Int]
numList n = [n-1, n-2..1]

cartProd :: [Int] -> [Int] -> [(Int, Int)]
cartProd xs ys = [(x,y) | x <- xs, y <- ys]

cartProdNumList :: Int -> [(Int, Int)]
cartProdNumList n = cartProd firstSequence secondSequence
                        where firstSequence = numList n
                              secondSequence = numList n

isPalindrome :: Int -> Bool
isPalindrome n = show n == (reverse $ show n)

largestPalindrome :: Int -> Int
largestPalindrome n = maximum $ filter isPalindrome $ multiplyTupleElements $ cartProdNumList n
                        where multiplyTupleElements = map (\(x,y) -> x*y)
