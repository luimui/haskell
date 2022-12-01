--Aufgabe 1
max2Floats :: (Float, Float) -> Float
max2Floats (x,y) =
  if x > y then x
  else y

min2Floats ::(Float,Float) -> Float
min2Floats (x,y) = if x<y then x else y

add2Floats :: (Float, Float) -> Float
add2Floats (x,y) = x+y

add2FloatsC :: Float -> (Float -> Float)
add2FloatsC x y = x + y

add3FloatsC :: Float -> (Float -> (Float -> Float))
add3FloatsC x y z = x + y + z



--Aufgabe 2
suc :: Int -> Int
suc x = x+1

--succ::Int->Int 3::Int
--------------------
-- succ 3 :: Int



--succ::Int->Int  succ::Int->Int  3::Int
                  -----------------------------
--                        succ 3 :: INt           
-----------------------------------------------
--         succ(succ 3)::Int


sumFloat :: [Float] -> Float
sumFloat [] = 0
sumFloat (head:tail) = head + (sumFloat tail)
--(head:tail) spaltet eine Liste in erstes und restliche elemente

minFloats::[Float] -> Float
minFloats [f] = f
minFloats (head:tail) = min2Floats (head, (minFloats tail))

int2bin::Float -> [Int]
int2bin 0 = []
int2bin x = [x `mod` 2] ++ int2bin (x `div` 2)







--succ::Int->Int 'a'::String
------------------------
-- succ 'a' :: ERROR




