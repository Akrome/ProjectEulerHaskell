module P0003 where

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

isPrime n =
    let
        smallEnough = takeWhile (\x -> x*x <= n) $ allNumbers 2
    in
        all (\x -> n `rem` x /= 0) smallEnough
