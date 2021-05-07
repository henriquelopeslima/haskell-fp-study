import Text.Printf
import Data.Char

fat::Int->Int
fat 0 = 1
fat n = fat(n-1) * n

bino::Int->Int->Int
bino n p = (div (fat n) ( (fat p) * (fat (n-p) ) ) )

main::IO()
main = do
  n <- readLn :: IO Int
  p <- readLn :: IO Int
  if (n<p) then printf "Não existe" else printf "%d\n" (bino n p)