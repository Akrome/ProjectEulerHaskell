module Primes where

isPrime n =
    let
        smallEnough = takeWhile (\x -> x*x <= n) $ iterate (+1)  2
    in
        all (\x -> n `rem` x /= 0) smallEnough