module Problem1011 (problem) where
import Text.Printf

calculateVolume :: Int -> Double
calculateVolume radius = (4/3) * 3.14159 * fromIntegral radius^3

problem :: IO ()
problem = do
  radius <- readLn :: IO Int
  printf "VOLUME = %.3f\n" $ calculateVolume radius