


type Ponto = (Int, Int)

pontos = [(1, 120), (-1, 50), (-3,-2), (3,-4)]

pontos :: [Ponto]

quadrantes::[Ponto]->([Ponto], [Ponto], [Ponto], [Ponto]) 
quadrantes (list) = ((quadrantePrimeiro list), (quadranteSegundo list),(quadrantePrimeiro list),(quadranteSegundo list))

quadrantePrimeiro::[Ponto]->[Ponto]
quadrantePrimeiro [] = []
quadrantePrimeiro (x:xs) = if (((fst x)>0 && (snd x)>0) || ((fst x)==0) && (snd x)>0) || ((fst x)>0) && (snd x)==0 then x : quadrantePrimeiro xs else quadrantePrimeiro xs

quadranteSegundo::[Ponto]->[Ponto]
quadranteSegundo [] = []
quadranteSegundo (x:xs) = if (((fst x)<0 && (snd x)>0) || ((fst x)==0) && (snd x)>0) then x : quadranteSegundo xs else quadranteSegundo xs

quadranteTerceiro::[Ponto]->[Ponto]
quadranteTerceiro [] = []
quadranteTerceiro (x:xs) = if ((fst x)<0 && (snd x)<0) then x : quadranteTerceiro xs else quadranteTerceiro xs

quadranteQuarto::[Ponto]->[Ponto]
quadranteQuarto [] = []
quadranteQuarto (x:xs) = if ((fst x)>=0 && (snd x)<0) then x : quadranteQuarto xs else quadranteQuarto xs


-- quadrantes::[Ponto]->([Ponto], [Ponto], [Ponto], [Ponto]) 
-- quadrantes (list) = ((quadrantePrimeiro list), (quadranteSegundo list),(quadrantePrimeiro list),(quadranteSegundo list))

-- quadrantePrimeiro::[Ponto]->[Ponto]
-- quadrantePrimeiro [] = []
-- quadrantePrimeiro (x:xs) = if ((fst x)>=0 && (snd x)>=0) then x : quadrantePrimeiro xs else quadrantePrimeiro xs

-- quadranteSegundo::[Ponto]->[Ponto]
-- quadranteSegundo [] = []
-- quadranteSegundo (x:xs) = if ((fst x)<=0 && (snd x)>=0) then x : quadranteSegundo xs else quadranteSegundo xs

-- quadranteTerceiro::[Ponto]->[Ponto]
-- quadranteTerceiro [] = []
-- quadranteTerceiro (x:xs) = if ((fst x)<=0 && (snd x)<=0) then x : quadranteTerceiro xs else quadranteTerceiro xs

-- quadranteQuarto::[Ponto]->[Ponto]
-- quadranteQuarto [] = []
-- quadranteQuarto (x:xs) = if ((fst x)>=0 && (snd x)<=0) then x : quadranteQuarto xs else quadranteQuarto xs
