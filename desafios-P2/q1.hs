type InfoNutricional = (String,Int,Float,Float)
type Refeicao = [(String,Int)]

almoco = [("carne",120),("arroz",200),("pao",50)]
almoco :: Refeicao

dispensa = [("carne",525,25,10),("arroz",425,5,90),("pao",400,5,80)]
dispensa :: [InfoNutricional]

nome (a,_,_,_)      = a
caloria (_,b,_,_)   = b
lipidio (_,_,c,_)   = c
glicideo (_,_,_,d)  = d

nome_alimento (a,_) = a
qtd_alimento (_,b)  = b

maisCalorico :: [InfoNutricional] -> InfoNutricional
maisCalorico alimentos = (filter (\z -> (caloria z) == cal) alimentos) !! 0
                    where
                        cal = maximum (map (\x -> caloria x) alimentos)