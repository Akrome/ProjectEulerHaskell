module P0003 where

{-
    The prime factors of 13195 are 5, 7, 13 and 29.
    What is the largest prime factor of the number 600851475143 ?
-}

import Primes

main = putStrLn $ show compute

compute =
    maximum.primes.primeDivisorsCandidates $ 600851475143

allNumbers starting = iterate (+1) starting

primeDivisorsCandidates n =
    let
        candidates = takeWhile (\x -> x*x <= n) $ allNumbers 1
    in
        filter (\x -> n `rem` x == 0) candidates

primes = filter isPrime
