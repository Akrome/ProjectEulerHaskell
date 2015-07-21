module P0005 where

main = putStrLn $ show compute

compute = lcmUpTo 20

lcmUpTo n = foldl1 (lcm) [1..n]