module Problem1008 (problem) where

import Text.Printf (printf)
calculateSalary :: Int -> Double -> Double
calculateSalary hoursWorked hourlyRate = fromIntegral hoursWorked * hourlyRate

problem :: IO ()
problem = do
    employeeNumber <- readLn :: IO Int
    hoursWorked <- readLn :: IO Int
    hourlyRate <- readLn :: IO Double

    let salary = calculateSalary hoursWorked hourlyRate
    printf "NUMBER = %d\n" employeeNumber
    printf "SALARY = U$ %.2f\n" salary
