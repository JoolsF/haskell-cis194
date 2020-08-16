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

-- brackets to avoid negation sign passed as subtraction
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

-- guards
hailstone :: Integer -> Integer
hailstone n
 | n `mod` 2 == 0 = n `div` 2
 | otherwise      = 3*n + 1

foo :: Integer -> Integer
foo 0 = 16
foo 1 
  | "Haskell" > "C++" = 3
  | otherwise         = 4
foo n
  | n < 0            = 0
  | n `mod` 17 == 2  = -43
  | otherwise        = n + 3

-- lists
nums, range, range2 :: [Integer]
nums   = [1,2,3,19]
range  = [1..100] -- [1,2,3,4,5...100]
range2 = [2,4..100] -- [2,4,6,8,10,12,14... 100]

-- hello1 and hello2 are exactly the same.
-- String is an abbreviation for [Char]

hello1 :: [Char]
hello1 = ['h', 'e', 'l', 'l', 'o']

hello2 :: String
hello2 = "hello"

helloSame = hello1 == hello2

--list cons
l1 = 1 : 2 : []
l2 = [1,2]
l1vsl2 = l1 == l2 -- [1,2] is shorthand here

hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n) 

