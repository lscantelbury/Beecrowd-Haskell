module Problem1004 where 

problem :: IO()
problem = do
    firstNumber <- readLn :: IO Int
    secondNumber <- readLn :: IO Int
    putStrLn ("PROD = " ++ show (firstNumber * secondNumber))