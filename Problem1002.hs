module Problem1002 (problem) where 

import Text.Printf (printf)
areaOfCircle :: Double -> Double
areaOfCircle r = n * r^2 where n = 3.14159

problem :: IO()
problem = do
    radius <- readLn :: IO Double
    let radiusToFloat = radius
    let result = areaOfCircle radiusToFloat
    printf "A=%.4f\n" result
