import Data.Char
import System.IO
import Text.Printf

charToString :: Char -> String
charToString c = [c]

verify::Int->Int
verify x | (x==0) = 1
         | otherwise = 0

aux::String->Int->Int->String
aux "" _ _ = ""
aux text x y | ((head text) == ' ')  = " " ++  (aux (tail text) x y)
             | ((head text) == '_' ) && (x == 0) = "<i>" ++  (aux (tail text) (verify x) y)
             | ((head text) == '_' ) && (x == 1) = "</i>" ++  (aux (tail text) (verify x) y)
             | ((head text) == '*' ) && (y == 0) = "<b>" ++  (aux (tail text) x (verify y))
             | ((head text) == '*' ) && (y == 1) = "</b>" ++  (aux (tail text) x (verify y))
             | otherwise = charToString (head text) ++ (aux (tail text) x y)

answer :: IO ()
answer = do
    a <- getLine
    printf "%s\n" (aux a 0 0)
    done <- isEOF
    if done then return ()
    else do
        answer
    return ()

main :: IO ()
main = do
  answer
  return ()