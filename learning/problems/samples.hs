insertList::[Int]->[Int]->[Int]
insertList (x:xs) [] = (x:xs)
insertList [] (y:ys) = (y:ys)
insertList (x:xs) (y:ys) = [x] ++ [y] ++ insertList xs ys

areaTriangle::Int->Int->Int->Int
areaTriangle a b c = sqrt (s * (s-a) * (s-b) * (s-c)) :: read Int
    where s = ( a + b + c ) / 2