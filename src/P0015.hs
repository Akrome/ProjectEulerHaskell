module P0011 where

{-
    Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
    How many such routes are there through a 20×20 grid?
-}

main = putStrLn $ show compute

-- Because Maths! (Permutations with repetitions)

compute = fact 40 `div` fact 20 ^ 2

fact 0 = 1
fact n = n*fact(n-1)