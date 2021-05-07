import Text.Printf
import Data.Char

isNotPair::Int->Bool
isNotPair a | ((mod a 2) == 1) = True
  | otherwise = False

main::IO()
main = do
  x1 <- readLn :: IO Int
  x2 <- readLn :: IO Int
  let list = if (x1<x2) then [(x1+1)..(x2-1)] else [(x2+1)..(x1-1)]
  printf "%d\n"  (sum (filter isNotPair list))