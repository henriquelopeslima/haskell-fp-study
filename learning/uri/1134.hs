-- Escreva a sua solução aqui
-- Code your solution here
-- Escriba su solución aquí


import Text.Printf
import Data.Char

response::Int->[Int]->IO()
response 4 k = do
  printf "MUITO OBRIGADO\nAlcool: %d\nGasolina: %d\nDiesel: %d\n" (k!!0) (k!!1) (k!!2)
response 1 [a,b,c] = do
  -- printf "Digite outro valor "
  x <- readLn :: IO Int
  response x [(a+1),b,c]
response 2 [a,b,c] = do
  -- printf "Digite outro valor "
  x <- readLn :: IO Int
  response x [a,(b+1),c]
response 3 [a,b,c] = do
  -- printf "Digite outro valor "
  x <- readLn :: IO Int
  response x [a,b,(c+1)]
response _ k = do
  -- printf "Digite outro valor "
  x <- readLn :: IO Int
  response x k

main::IO()
main = do
  -- printf "Digite outro valor "
  x <- readLn :: IO Int
  response x [0,0,0]