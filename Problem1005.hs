module Problem1005 (problem) where 

import Text.Printf (printf)
import Control.Arrow

type Grade = (Double, Double)

average :: Grade -> Grade -> Double
average (n1, w1) (n2, w2) = (n1 * w1 + (n2 * w2)) / (w1 + w2)

problem :: IO()
problem = do
    firstNumber <- readLn :: IO Double
    secondNumber <- readLn :: IO Double
    let result = average (firstNumber, 3.5) (secondNumber, 7.5)
    printf "MEDIA = %.5f\n" result
