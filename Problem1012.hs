module Problem1012 (problem) where
import Text.Printf

calculateTriangle :: Float -> Float -> Float
calculateTriangle base height = (base * height) / 2

calculateCircle :: Float -> Float
calculateCircle radius = 3.14159 * radius ^ 2

calculateTrapezium :: Float -> Float -> Float -> Float
calculateTrapezium baseA baseB height = ((baseA + baseB) * height) / 2

calculateSquare :: Float -> Float
calculateSquare side = side^2

calculateRectangle :: Float -> Float -> Float
calculateRectangle base side = base * side

problem :: IO ()
problem = do
  input <- getLine

  let a = read $ head $ words input
  let b = read $ words input !! 1
  let c = read $ words input !! 2

  printf "TRIANGULO: %.3f\n" $ calculateTriangle a c
  printf "CIRCULO: %.3f\n" $ calculateCircle c
  printf "TRAPEZIO: %.3f\n" $ calculateTrapezium a b c
  printf "QUADRADO: %.3f\n" $ calculateSquare b
  printf "RETANGULO: %.3f\n" $ calculateRectangle a b