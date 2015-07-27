module P0004 where

{-
    A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    Find the largest palindrome made from the product of two 3-digit numbers.
-}

main = putStrLn $ show compute

compute = maximum.(filter (palindrome)) $ [i * j | i <- [100..999], j <- [i .. 999]]

palindrome n =
    let asString = show n
    in asString == reverse asString


