module P0010 where

{-
    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
    Find the sum of all the primes below two million.
-}

import Data.Maybe
import Data.List

-- This works, but boy is it slow without state...

main = putStrLn $ show compute

compute = sum $ primes 2000000

primes n =
    let
        numbers = [3..n]
    in
        foldl (go) [2] numbers

go primes n =
    let
        maybe = find (\p -> p*p > n || n `rem` p == 0) primes
        found = fromJust maybe
        isPrime = found * found > n
    in
        if isPrime then
            primes ++ [n]
        else
            primes