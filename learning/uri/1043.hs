import Text.Printf
import Data.Char
    
myAbs::Double->Double
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
        -- str <- readLn :: IO String
        str <- getLine :: IO String
        let list = (split str ' ')
        let a = read(list !! 0)::Double
        let b = read(list !! 1)::Double
        let c = read(list !! 2)::Double
        if((abs (b-c)) < a && a < b+c && (abs (a-c)) < b && b < a+c && (abs (a-b)) < c && c < a+b) then printf "Perimetro = %.1f\n" (a+b+c)
            else printf "Area = %.1f\n" (((a+b)*c)/2)

