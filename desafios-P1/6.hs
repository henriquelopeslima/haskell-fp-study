import Text.Printf

listFuuling::Int->[Int]
listFuuling n = [1..n]

isPita::Int->Int->Int->Bool
isPita a b c | (((a^2)+(b^2)==(c^2))) = True
             | otherwise = False

pitagorico::Int->[(Int, Int, Int)]
pitagorico 0 = [(0,0,0)]
pitagorico x = [(a,b,c)|a<-(listFuuling x), b<-(listFuuling x), c<-(listFuuling x), (isPita a b c)]