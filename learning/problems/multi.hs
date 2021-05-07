suc::Int->Int
suc x = x+1

ant::Int->Int
ant x = x-1

soma::Int->Int->Int
soma x y | (y == 1) = suc x
         | otherwise = soma (suc x) (ant y) 

multi::Int->Int->Int
multi x y | (y == 1) = x
          | otherwise = soma x (multi x (ant y))