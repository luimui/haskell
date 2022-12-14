-- 1)
add :: (Int, Int) -> Int
add (x, y) = x + y

--add :: (Int, Int) -> Int   (x,y) :: (Int,Int)
-----------------------------------------------
--       add (x,y) :: Int

addC :: Int -> Int -> Int
addC x y = x + y

--addC :: Int -> Int -> Int   x :: Int      y::Int
--------------------------------------
--addC x :: Int -> Int                      y::Int
------------------------------------------------
--                  addC x y :: Int

succ :: Int -> Int
succ x = x + 1

--addC :: Int -> Int -> Int    x :: Int  succ :: Int -> Int          x :: Int
-----------------------------
--addC :: Int -> Int -> Int             succ x :: Int                x :: Int
----------------------------------------------------
--                  addC succ x  :: Int -> Int                       x :: Int
------------------------------------------------------------------------------
--                               addC succ x x :: Int

-- 2)
nor :: Bool -> Bool -> Bool
nor False False = True
nor _ _ = False

nor2 :: Bool -> Bool -> Bool
nor2 x y | (x==False) && (y==False) = True
         | otherwise = False


-- nor False False
-- == {Anwenden Def. nor  }
-- False False = True
-- == {Anwenden (False==False) erstes Argument}
-- True
-- == {Anwenden (False==False) zweites Argument}
-- True
-- == {Anwenden False False = True}
-- True

-- nor2 False False
-- == {Anwenden Def. nor2}
-- (x==False) && (y==False) = True
-- == {Anwenden (x==False) erstes Argument}
-- True
-- == {Anwenden (y==False) zweites Argument}
-- True
-- == {Anwenden (x==False) && (y==False) = True}
-- True


-- nor True False
-- == {Anwenden Def. nor}
-- _ _ = False
-- == {Keine Pruefung der Parameter}
-- False

-- nor2 True False
-- == {Anwenden Def. nor2}
-- x y | otherwise = False
-- == {Anwenden otherwise=True}
-- False

-- fib 4
-- == {Anwenden Def. fib }
-- fib(4-1) + fib(4-2)
-- == {Anwenden - }
-- fib(3) + fib(2)
-- = {Anweden linkes fib}
-- fib(3-1) + fib(3-2) + fib(2)
-- == { Anwenden linkes - }
-- fib(2) + fib(3-2) + fib(2)
-- == { Anwenden linkes - }
-- fib(2) + fib(1) + fib(2)
-- == { Anwenden linkes fib}
-- fib(2-1) + fib(2-2) + fib(1) + fib(2)
-- = { Anwenden linkes -}
-- fib(1) + fib(2-2) + fib(1) + fib(2)
-- = { Anwenden linkes -}
-- fib(1) + fib(0) + fib(1) + fib(2)
-- == {Anwenden linkes fib}
-- 1 + fib(0) + fib(1) + fib(2)
-- == {Anwenden linkes fib}
-- 1 + 1 + fib(1) + fib(2)
-- == {Anwenden linkes fib}
-- 1 + 1 + 1 + fib(2)
-- == {Anwenden linkes fib}
-- 1 + 1 + 1 + fib(2-1) + fib(2-2)
-- == {Anwenden -}
-- 1 + 1 + 1 + fib(1) + fib(0)
-- == {Anwenden linkes fib}
-- 1 + 1 + 1 + 1 + fib(0)
-- == {Anwenden linkes fib}
-- 1 + 1 + 1 + 1 + 1
-- == {Anwenden linkes +}
-- 2 + 1 + 1 + 1
-- == {Anwenden linkes +}
-- 3 + 1 + 1
-- == {Anwenden linkes +}
-- 4 + 1
-- == {Anwenden linkes +}
-- 5


--perfekt :: Int -> [Int]


teiler :: Int -> Int -> [Int]
teiler a b | (a==0) || (b==0) = [] 
           | (a `mod` b-1 == 0) = b-1 : teiler (a) (b-1)
           | (a `mod` b-1 /= 0) = teiler (a) (b-1)
