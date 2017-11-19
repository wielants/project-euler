module Problem2
    ( problem2
    ) where

-- https://projecteuler.net/problem=2
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

problem2 :: String
problem2 = show $ sum $ takeWhile (<4000000) $ filter even [fib x| x<-[1..]]
