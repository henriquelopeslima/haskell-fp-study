import Text.Printf

verify::Char->String->Bool
verify _ [] = False
verify c (x:xs) = if (c == x) then True else verify c xs

subst::Char->String->String->String
subst _ [] _ = ""
subst _ _ [] = ""
subst c (x:xs) (y:ys) = if (c == x) then c : subst c xs ys else y : subst c xs ys 

create_str::Int->String
create_str 0 = ""
create_str x = "-" ++ create_str (x-1) 

answer::String->String->Int->IO()
answer word cript qtd = do
    if(word == cript) then do
       printf "%s \n" cript
       printf "Adivinhou em %d tentativas\n" qtd
    else do
        printf "%s \n? " cript
        c <- getChar
        printf "\n"
        if (verify c word) then do    
            answer word (subst c word cript) (qtd+1)
        else do
            printf "Não ocorre\n"
            answer word cript (qtd+1)
            
main::IO()
main = do
    x <- getLine
    let cript = create_str (length x)
    answer x cript 0