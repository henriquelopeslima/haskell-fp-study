data Arv a = Vazia | No a (Arv a) (Arv a)

arvore::Arv Int
arvore = No 1 (No 2 (No 3 Vazia Vazia) (Vazia)) (No 4 (No 5 (No 6 Vazia Vazia) Vazia) (Vazia))

sumArv::( Num a ) => Arv a -> a
sumArv Vazia = 0
sumArv (No n esq dir) = n + (sumArv esq) + (sumArv dir)