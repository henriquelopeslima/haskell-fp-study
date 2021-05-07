import Data.Char
import System.IO
import Text.Printf

charToString :: Char -> String
charToString c = [c]

isPair::Int->Bool
isPair a | ((mod a 2) == 0) = True
  | otherwise = False

aux::String->Int->String
aux "" _ = ""
aux text number | ((head text) == ' ')  = " " ++  (aux (tail text) number)
                | (number == 0) = (charToString (toUpper (head text))) ++ (aux (tail text) 1) 
                | (number == 1) = (charToString (toLower (head text))) ++  (aux (tail text) 0)
                | otherwise = ""

answer :: IO ()
answer = do
    a <- getLine
    -- printf "%s\n" (map toUpper a)
    printf "%s\n" (aux a 0)
    done <- isEOF
    if done then return ()
    else do
        answer
    return ()

main :: IO ()
main = do
  answer
  return ()