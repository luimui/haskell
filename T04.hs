--Lambda: Funktion ohne Namen definieren, die darin verwendeten Variablen sind lokal, nicht global wie sonst

gra :: [Double -> Double -> Double]
--Curryfizierte Funktionsdefinition, Variablen nacheinander einlesen
gra = [\x -> \y -> x+y, \x -> \y -> x-y, \x -> \y -> x*y, \x -> \y -> x/y]

--Listcomprehension
--Grade Zahlen von 1-20
gz::[Int]
gz = [x | x <- [1..20], x `mod` 2 == 0] 
gza1 x y z= [n | n <- [x..y], x `mod` z == 0] 


--allgemein
gza2::Int->Int->Int->[Int]
gza2 = \x -> \y -> \z -> [n | n <- [x..y], x `mod` z == 0] 


--teiler::[Int]
teiler n = [x | x <- [1..n], n `mod` x == 0]

--Skalarprodukt zweier Vektoren
--skalarprodukt::Int
skalarprodukt xs ys = sum [k*v | (k,v) <- zip xs ys ] 

--HA Aufgabe 5

--Iteration über Funktionen
applyAll::a->b->[a->b->c]->[c]
applyAll x y fs = [f x y | f <- fs ]


merge:: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (a:as) (b:bs) | a<=b = a : merge as (b:bs)
                    | otherwise = b : merge(a:as) bs 


halve :: [a] -> ([a],[a])
halve [] = ([],[])
halve [a] = ([a],[])
--halve (a:b:s) = let (ls,rs) = halve tail in (a:ls,b:rs)
--Halve(a:b:s) --> zerteilt liste in 3 elemente a,b,rest
halve (a:b:s) = (a:ls,b:rs)
  where 
    (ls,rs) = halve s
-- um rs und ls zu definieren wird wieder halve aufgerufen












































