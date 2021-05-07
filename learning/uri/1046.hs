import Text.Printf
import Data.Char
    
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

main :: IO ()
main = do    
        str <- getLine :: IO String
        let list = (split str ' ')
        let a = read(list !! 0)::Int
        let b = read(list !! 1)::Int
        if(b==a) then printf "O JOGO DUROU 24 HORA(S)\n"
          else if (b>a) then printf "O JOGO DUROU %d HORA(S)\n" (b-a)
            else printf "O JOGO DUROU %d HORA(S)\n" (24-a+b)