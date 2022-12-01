equalFour :: Int -> Int -> Int -> Int -> Bool
equalFour a b c d | (a == b) && (a == c) && (a == d) = True
                  | otherwise = False



--orderTriplet :: (Int, Int, Int) -> (Int,Int,Int)
--orderTriplet (a,b,c) = (x,y,z)
                   --where x = max (max a b) c
                   
--max3 (x, y, z) = max (max x y) z




fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo x = fibo (x-1) + fibo (x-2)



isElem :: Int -> [Int] -> Bool
isElem e (x:xs) | x==e = True
                | x/=e = isElem e xs
isElem e [] = False



luhnDouble :: Int -> Int
luhnDouble a | a*2>=9 = a*2-9
             | otherwise = a*2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d | (d + luhnDouble(c) + b + luhnDouble(a)) `mod` 10 == 0 = True
            | otherwise = False
