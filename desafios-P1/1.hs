import Text.Printf
import Data.Char

split::String->Char->[String]
split [] delim = [""]
split (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = split cs delim

verify::Double->Double->Double->Double->IO()
verify a b c delta | ((a/=0) && (delta>0)) = printf "R1 = %.5f\nR2 = %.5f\n"  ((-b+(sqrt delta))/(2*a))  ((-b-(sqrt delta))/(2*a))
                   | ((a/=0) && (delta==0)) = printf "R1 = %.5f\n" ((-b+(sqrt delta))/(2*a))
                   | otherwise = printf "Impossivel calcular\n"

main::IO()
main = do
  str <- getLine :: IO String
  let list = (split str ' ')
  let a = read(list !! 0)::Double
  let b = read(list !! 1)::Double
  let c = read(list !! 2)::Double
  verify a b c ((b^2)-4*a*c)
