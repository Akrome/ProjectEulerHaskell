module P0004 where

main = putStrLn $ show compute

compute = maximum.(filter (palindrome)) $ [i * j | i <- [100..999], j <- [i .. 999]]

palindrome n =
    let asString = show n
    in asString == reverse asString


