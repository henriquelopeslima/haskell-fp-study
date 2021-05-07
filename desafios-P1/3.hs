import Text.Printf
import Data.Char

split::String->Char->[String]
split [] delim = [""]
split (c:cs) delim
    | c == delim = "" : rest
    | otherwise = (c : head rest) : tail rest
    where
        rest = split cs delim

verify::Int->Int->Int->Int->IO()
verify hi mi hf mf | ((hi==hf) && (mi<mf)) = printf "O JOGO DUROU 0 HORA(S) E %d MINUTO(S)\n" (60 - (mi - mf))
                   | ((hi==hf) && (mi>mf)) = printf "O JOGO DUROU 23 HORA(S) E %d MINUTO(S)\n" (60 - (mi - mf))
                   | ((hi>hf) && (mi==mf)) = printf "O JOGO DUROU %d HORA(S) E 0 MINUTO(S)\n" (24 - (hf - hi)) 
                   | ((hi>hf) && (mi>mf)) = printf "O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n"  (23 - (hi - hf)) (60 - (mi - mf))
                   | (((hi>hf) && (mi<mf)) || ((hi>hf) && (mi==mf))) = printf "O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n"  (24 - (hi - hf)) (mi - mf)
                   | ((hi<hf) && (mi>mf)) = printf "O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n"  ((hf - hi) - 1) (60 - (mi - mf))
                   | (((hi<hf) && (mi<mf)) || ((hi<hf) && (mi==mf))) = printf "O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n"  (hf - hi) (mf - mi)
                   | otherwise = printf "O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)\n"

main::IO()
main = do
  str <- getLine :: IO String
  let list = (split str ' ')
  let hi = read(list !! 0)::Int
  let mi = read(list !! 1)::Int
  let hf = read(list !! 2)::Int
  let mf = read(list !! 3)::Int
  verify hi mi hf mf
