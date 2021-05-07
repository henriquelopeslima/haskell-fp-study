import Text.Printf
import Data.Char

isPair::Int->Bool
isPair a | ((mod a 2) == 0) = True
  | otherwise = False

main::IO()
main = do
  -- printf "Digite outro valor "
  x1 <- readLn :: IO Int
  x2 <- readLn :: IO Int
  x3 <- readLn :: IO Int
  x4 <- readLn :: IO Int
  x5 <- readLn :: IO Int
  let list = [x1,x2,x3,x4,x5]
  printf "%d valores pares\n"  (length (filter isPair list))