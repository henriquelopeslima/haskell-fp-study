import Data.Char
import System.IO
import Text.Printf

charToString :: Char -> String
charToString c = [c]

split::String->Char->[String]
split [] delim = [""]
split (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = split cs delim


aux::String->String->String
aux a "" = a
aux "" b = b
aux a b = (charToString (head a)) ++ (charToString (head b)) ++ aux (tail a) (tail b)

answer :: Int -> IO ()
answer qtd = do
    str <- getLine :: IO String
    let list = (split str ' ')
    let x = (list !! 0) 
    let y = (list !! 1) 
    printf "%s\n" (aux x y)
    if (qtd-1==0) then return ()
    else do
        answer (qtd-1)
    return ()

main :: IO ()
main = do
  qtd <- readLn :: IO Int
  answer qtd
  return ()