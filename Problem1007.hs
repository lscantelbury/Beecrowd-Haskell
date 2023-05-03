module Problem1007 (problem) where

import Control.Arrow (Arrow(first))
import Text.Printf (printf)

result :: Int -> Int -> Int -> Int -> Int
result a b c d = (a * b) - (c * d)

problem :: IO()
problem = do
    firstNumber <- readLn :: IO Int
    secondNumber <- readLn :: IO Int
    thirdNumber <- readLn :: IO Int
    fourthNumber <- readLn :: IO Int
    printf "DIFERENCA = %d\n" (result firstNumber secondNumber thirdNumber fourthNumber)

