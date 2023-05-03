module Problem1013 (problem) where
import Text.Printf (printf)

biggest :: [Int] -> Int
biggest [] = 0
biggest (x:xs)
  | x > biggest xs = x 
  | otherwise = biggest xs

problem :: IO ()
problem = do
  input <- getLine
  let firstNumber = read $ head $ words input
  let secondNumber = read $ words input !! 1
  let thirdNumber = read $ words input !! 2
  printf "%d eh o maior\n" (biggest  [firstNumber, secondNumber, thirdNumber])
  