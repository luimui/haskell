oder :: Bool -> Bool -> Bool
oder False False = False
oder _ _ = True


fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x 


oneOfFour :: Int -> (a,a,a,a) -> a
oneOfFour n (m,b,c,d) | n == 1 = m
  | n == 2 = b
  | n == 3 = c
  | otherwise = d


countNumOccurr :: Eq a => a -> [a] -> Int
countNumOccurr _ [] = 0
countNumOccur a (eq:eqs)
  | a == eq = 1 + countNumOccur a eqs
  | otherwise = 0 + countNumOccur a eqs 


ggt :: (Int->Int) -> Int
ggt (0,0) = error "nicht definiert"
ggt (0,b) = b
ggt (a,b) = ggt (mod b a, a)



kuerzen :: (Int, Int) -> (Int, Int)
kuerzen x y = (div x g, div y g)
  where
    g = ggt(x,y)

kuerzenLet :: (Int->Int) -> (Int, Int)
kuerzenLet x y = let g = ggt(x,y) 
                 in (div x g, div y g)
 































