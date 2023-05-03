module Problem1010 (problem) where 

import Text.Printf
data Product = Product {
    amount :: Int,
    value :: Double
} deriving (Show)

calculateProduct :: Product -> Double
calculateProduct product = fromIntegral (amount product) * value product

createProduct ::  String -> Product
createProduct input = Product {
    amount = read (words input !! 1),
    value = read (words input !! 2)
}

problem :: IO ()
problem = do
    inputOne <- getLine
    inputTwo <- getLine

    let productOne = createProduct inputOne

    let productTwo = createProduct inputTwo

    printf "VALOR A PAGAR: R$ %.2f\n" (calculateProduct productOne + calculateProduct productTwo)
