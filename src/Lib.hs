module Lib
    ( problems
    ) where

import Problem1
import Problem2

listOfProblems = [problem1, problem2]

showSolutions :: [String] -> IO ()
showSolutions n = mapM_ (putStrLn . \(index, solution) -> "The Solution to Problem " ++ (show index) ++ " is \"" ++ solution ++ "\"") (zip [1..] n)

problems :: IO ()
problems = showSolutions listOfProblems
