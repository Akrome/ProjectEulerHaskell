module P0001 where

{-
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    Find the sum of all the multiples of 3 or 5 below 1000.
-}

main = putStrLn $ show compute

compute =
    let nums = [1..999] in
    sum.filter valid $ nums

valid x
    | x `rem` 3 == 0 = True
    | x `rem` 5 == 0 = True
    | otherwise = False
