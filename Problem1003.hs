module Problem1003 where 

import Text.Printf ( printf )
problem :: IO ()
problem = do
  firstNumber <- readLn :: IO Int
  secondNumber <- readLn :: IO Int
  let result = firstNumber + secondNumber
  printf "SOMA = %d" result
