module Problem1001 where

problem :: IO ()
problem = do
    firstNumber <- readLn :: IO Int
    secondNumber <- readLn :: IO Int
    let result = firstNumber + secondNumber
    putStrLn ("X = " ++ show result)