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

        let x = read(list !! 0)::Double 
        let y = read(list !! 1)::Double
        let w = read(list !! 2)::Double
        let z = read(list !! 3)::Double

        let med = sum[2.0*x,3.0*y,4.0*w,1.0*z] / 10.0
        printf "Media: %.1f\n" med
        if med >=7.0 then printf "Aluno aprovado.\n"
            else if med < 5.0 then printf "Aluno reprovado.\n"
                else do
                    printf "Aluno em exame.\n"
                    n <- readLn :: IO Double
                    let r = ((med + n)/2.0)::Double
                    printf "Nota do exame: %.1f\n" n
                    if r >= 5.0 then printf "Aluno aprovado.\nMedia final: %.1f\n" r
                        else  printf "Aluno reprovado.\nMedia final: %.1f\n" r