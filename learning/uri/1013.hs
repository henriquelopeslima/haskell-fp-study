import Text.Printf
import Data.Char

maiorAB::Int->Int->Int
maiorAB a b = div value 2
    where value = (a+b+myAbs(a-b))
    
myAbs::Int->Int
myAbs a | (a>=0) = a
        | otherwise = (-a)

split::String->Char->[String]
split [] delim = [""]
split (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = split cs delim

getInt :: Char -> Int
getInt x = digitToInt x

main :: IO ()
main = do    
        str <- getLine :: IO String
        let list = (split str ' ')
        let a = read(list !! 0)::Int
        let b = read(list !! 1)::Int
        let c = read(list !! 2)::Int
        printf "%d eh o maior\n" (maiorAB a (maiorAB b c))

