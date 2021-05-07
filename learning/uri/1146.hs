import Text.Printf
import Data.Char

response::Int->IO()
response 0 = printf ""
response x = do 
            printf "%s" (printlist[1..x])
            printf "\n"
            b <- readLn :: IO Int
            response b


printlist::[Int]->String
printlist [] = ""
printlist (x:xs) | (x==1 || (show x)==(show xs)) = show x ++ printlist xs
                 | otherwise = " " ++ (show x) ++ printlist xs

main::IO()
main = do
  x <- readLn :: IO Int
  response x