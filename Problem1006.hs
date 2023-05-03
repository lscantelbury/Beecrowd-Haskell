module Problem1006 (problem) where

import Text.Printf (printf)
import Control.Arrow

type Grade = (Double, Double)

average :: Grade -> Grade -> Grade -> Double
average (n1, w1) (n2, w2) (n3, w3) = (n1 * w1 + (n2 * w2) + (n3 * w3)) / (w1 + w2 + w3)

problem :: IO()
problem = do
    firstNumber <- readLn :: IO Double
    secondNumber <- readLn :: IO Double
    thirdNumber <- readLn :: IO Double
    let result = average (firstNumber, 2) (secondNumber, 3) (thirdNumber, 5)
    printf "MEDIA = %.1f\n" result