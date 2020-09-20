
{- 
  Week 1 Reading 
  Learn You a Haskell for Great Good, chapter 2

  http://learnyouahaskell.com/starting-out
-}

-- boolean
ex1 = True || False

ex2 = not False && True

double x = x + x

--lists

ex3 = [1,2,3] ++ [4,5,6] -- concat

ex4 = 1:[2,3] --cons

ex5 = ex4 !! 1 -- get element at index



ex6 = [3,2,1] > [3,2,0] -- true (lists are comparsed in lexicographical order)

ex7 = [3,2,1] > [3,2,2] -- false

-- list ops
l1 = [1,2,3,4,5]

ex8 = head l1 -- 1
ex9 = tail l1 -- [2,3,4,5]
ex10 = last l1 -- 5
ex11 = init l1 -- [1,2,3,4]
ex12 = null l1 -- false
ex13 = null [] -- true
ex14 = take 3 l1 -- [1,2,3]
ex15 = drop 3 l1 -- [4,5]

l2 = [4,5,10,-1,19]

ex16 = minimum l2 -- -1
ex17 = maximum l2 -- 19
ex18 = sum l2 --37
ex19 = product l2 -- -3800
ex20 = 4 `elem` l2 -- true

-- infinite lists can be defined if no upper bound is given
il1 = [2,4..]
ex21 = take 10 il1 -- [2,4,6,8,10,12,14,16,18,20]
ex22 = cycle [3,6,9] -- turns list into infinite list
ex23 = take 5 (repeat 5) -- repeat creates infinite list of an element
ex24 = replicate 3 10 -- [10,10,10]