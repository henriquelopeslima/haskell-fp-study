import Text.Printf
import Data.Char


toUpperWord::String->String
toUpperWord [] = []
toUpperWord (x:xs) = [(toUpper x)] ++ toUpperWord xs

isWord::String->Bool
isWord [] = False
isWord [x] = (isLetter x) 
isWord (x:xs) = ((isLetter x) && isWord xs)

myReverse::String->String
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

getNumbers::IO([Int])
getNumbers = do
        printf "Input number\n"
        x <- getLine
        if (null x) then return []
        else do 
            xs <- getNumbers
            if (all isNumber ([(read x :: Int)]++xs)) then return ((read x :: Int):xs)
            else printf "Error \n" >> getNumbers 

main :: IO ()
main = do    
        printf "Digit the numbers\n"
        printf "The sum is %d" (sum getNumbers)





