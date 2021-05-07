module Main where
import Data.Char(isDigit)
import System.Random(randomRIO)
import Text.Printf

main = do x <- 88
          n <- game x 1
          printf ""

game::Int->Int->IO Int
game x a = do
            k <- readLn :: IO Int
            if k<x then "Valor alto\n" >> game x (a+1)
                else if k<x then "Valor baixo\n" >> game x (a+1)
                    else return a