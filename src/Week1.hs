module Week1 where

-- CIS 194 Week 1
-- https://www.cis.upenn.edu/~cis194/spring13/lectures/01-intro.html

someFunc :: IO()
someFunc = putStrLn "Week 1"

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int
numDigits = length( show reallyBig)

-- prefix
ex01 :: Int
ex01 = mod 15 4

-- infix using backticks
ex02 :: Int
ex02 = 15 `mod` 4

-- bracked to avoid negation sign passed as subtraction
ex03 :: Int
ex03 = (-3) - (-2)

-- not equals
ex06 :: Int -> Int -> Bool
ex06 a b = a /= b

-- if example 1 (non idiomatic)
ex04 :: Int -> String
ex04 x = 
    if x > 90 then "You got a A"
    else if 80 < x && x < 90 then "you got a B"
    else if 70 < x && x < 80 then "You got a C"
    else if 60 < x && x < 70 then "you got a D"
    else "You got a F"

-- if example 2 (preferred)

ex05 x
  | x > 90 = "You got a A"
  | 80 < x && x < 90 = "you got a B"
  | 70 < x && x < 80 = "You got a C"
  | 60 < x && x < 70 = "you got a D"
  | otherwise = "You got a F"


-- pairs
p :: (Int, Char)
p = (3, 'x')

sumPair :: (Int, Int) -> Int
sumPair (a,b) = a + b

-- functions

f :: Int -> Int -> Int -> Int
f a b c = a + b + c
-- note that function application has higher precedence than any infix operators
-- this won't work therefore... f 1 2+3 4 should be f 1 (2+3) 4