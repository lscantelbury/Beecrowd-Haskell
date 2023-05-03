module Problem1009 (problem) where

import Text.Printf (printf)
calculateProfit :: Double -> Double -> Double
calculateProfit salary sales = salary + (sales * 0.15)

problem :: IO ()
problem = do
    name <- getLine
    salary <- readLn :: IO Double
    sales <- readLn :: IO Double
    let profit = calculateProfit salary sales
    printf "TOTAL = R$ %.2f\n" profit