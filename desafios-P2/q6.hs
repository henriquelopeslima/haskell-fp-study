type InfoNutricional = (String, Int, Float, Float)
type Refeicao = [(String, Int)]

almoco = [("carne", 120), ("arroz", 200), ("pao", 50)]

almoco :: Refeicao

dispensa = [("carne", 525, 25, 10), ("arroz", 425, 5, 90), ("pao", 400, 5, 80)]

dispensa :: [InfoNutricional]

nome (a, _, _, _) = a

caloria (_, b, _, _) = b

lipidio (_, _, c, _) = c

glicideo (_, _, _, d) = d

nome_alimento (a, _) = a

qtd_alimento (_, b) = b

maisCalorico :: [InfoNutricional] -> InfoNutricional
maisCalorico alimentos = (filter (\z -> (caloria z) == cal) alimentos) !! 0
  where
    cal = maximum (map (\x -> caloria x) alimentos)

getInfoNutricional :: [InfoNutricional] -> String -> InfoNutricional
getInfoNutricional alimentos str = (filter (\z -> (nome z) == str) alimentos) !! 0

totalCalorias :: [InfoNutricional] -> Refeicao -> Int
totalCalorias [] _ = 0
totalCalorias _ [] = 0
totalCalorias lista (y : ys) = ((caloria (getInfoNutricional lista (nome_alimento y))) * (qtd_alimento y)) + totalCalorias lista ys

saudaveis_rec :: Float -> [InfoNutricional] -> Refeicao -> [String]
saudaveis_rec _ [] _ = []
saudaveis_rec _ _ [] = []
saudaveis_rec qtd_max info_nutri (y : ys) =
  if ((lipidio (getInfoNutricional info_nutri (nome_alimento y))) < qtd_max)
    then (nome_alimento y) : saudaveis_rec qtd_max info_nutri ys
    else saudaveis_rec qtd_max info_nutri ys

saudaveis_nrec :: Float -> [InfoNutricional] -> Refeicao -> [String]
saudaveis_nrec x a b = 
    [(fst c) | c <- b, lipidio (getInfoNutricional a (fst c)) < x]

saudaveis5 :: Float -> [InfoNutricional] -> Refeicao -> [String]
saudaveis5 x a b = 
    [(fst c) | c <- b, lipidio (getInfoNutricional a (fst c)) < x]