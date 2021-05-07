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

        printf "%d\n" ((quickSort [a,b,c]) !! 0)
        printf "%d\n" ((quickSort [a,b,c]) !! 1)
        printf "%d\n" ((quickSort [a,b,c]) !! 2)

        printf "\n"

        printf "%d\n" (a)
        printf "%d\n" (b)
        printf "%d\n" (c)

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = (quickSort menores) ++ (x : iguais) ++ (quickSort maiores)
    where menores = filter (< x) xs
          maiores = filter (> x) xs
          iguais  = filter (== x) xs
