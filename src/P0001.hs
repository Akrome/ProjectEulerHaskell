module P0001 where

main = putStrLn $ show compute

compute =
    let nums = [1..999] in
    sum.filter valid $ nums

valid x
    | x `rem` 3 == 0 = True
    | x `rem` 5 == 0 = True
    | otherwise = False
