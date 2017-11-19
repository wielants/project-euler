module Problem1
    ( problem1
    ) where

-- https://projecteuler.net/problem=1
-- Find the sum of all the multiples of 3 or 5 below 1000.

problem1 :: String
problem1 = show . sum $ [x | x <- [1..999], x `mod` 3 == 0, x `mod` 5 == 0]
