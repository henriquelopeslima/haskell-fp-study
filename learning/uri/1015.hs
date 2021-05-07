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
        str1 <- getLine :: IO String
        str2 <- getLine :: IO String
        let list1 = (split str1 ' ')
        let list2 = (split str2 ' ')
        let x1 = read(list1 !! 0)::Double
        let y1 = read(list1 !! 1)::Double
        let x2 = read(list2 !! 0)::Double
        let y2 = read(list2 !! 1)::Double
        printf "%.4f\n" (sqrt(((x2-x1)^2)+((y2-y1)^2)))
