import Text.Printf
import Data.Char
import System.IO

verify::String->String->Bool
verify [] _ = True
verify _ [] = False
verify (x:xs) (y:ys)|(toLower x == toLower y) = verify xs ys
                      |otherwise = False

broken::String->String->String
broken [] a = a
broken _ [] = []
broken (x:xs) (y:ys)|(toLower x == toLower y) = broken xs ys
                        |otherwise = (y:ys)

fun::String->String->Bool->String->String
fun _ _ _ [] = []
fun original subs key (x:xs)|(x == '<') = '<' : (fun original subs (True) xs)
                                   |(x == '>') = '>' : (fun original subs (False) xs)
                                   |(key == True) = do
                                        if verify original (x:xs) then
                                            subs ++ fun original subs key (broken original (x:xs))
                                        else
                                            x : fun original subs key xs
                                    |(key == False) = x : fun original subs key xs

answer::IO()
answer = do
    x <- getLine
    y <- getLine
    z <- getLine
    printf "%s\n" (fun x y (False) z)
    a <- isEOF
    if a then do    
        return ()
    else do
        answer

main::IO()
main = do
    answer