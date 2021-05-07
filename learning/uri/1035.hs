import Text.Printf
import Data.Char

split::String->Char->[String]
split [] delim = [""]
split (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = split cs delim

main :: IO ()
main = do    
        
        str <- getLine :: IO String
        let list = (split str ' ')

        let a = read(list !! 0)::Int 
        let b = read(list !! 1)::Int
        let c = read(list !! 2)::Int
        let d = read(list !! 3)::Int

        if ((b>c) && (d>a) && (c+d>a+b) && (c>0) && (d>0) && (isPar a)) then printf "Valores aceitos\n"
            else printf "Valores nao aceitos\n"

isPar::Int->Bool
isPar x | (x `mod` 2 == 0) = True
        | otherwise = False              