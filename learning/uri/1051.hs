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
        renda <- readLn :: IO Double
        if(renda>4500.00) then printf "R$ %.2f\n" (calcImposto renda)
          else if (renda>=3000.01) then printf "R$ %.2f\n" (calcImposto renda)
            else if (renda>=2000.01) then printf "R$ %.2f\n" (calcImposto renda)
                else printf "Isento\n"

calcImposto::Double->Double
calcImposto x | (x>4500.0) = (((x-4500.0)*0.28)+(270.0)+(80.0))
              | (x>3000.0) = (((x-3000.0)*0.18)+(80.0))
              | otherwise = ((x-2000.0)*0.08)