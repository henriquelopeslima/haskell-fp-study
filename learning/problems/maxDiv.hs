maxDiv::Int->Int->Int->Int
maxDiv a x y = last divisores
    where divisores = [b | b <- [x..y], b `mod` a == 0]