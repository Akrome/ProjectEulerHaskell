module P0007 where

{-
    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    What is the 10 001st prime number?
-}

import Data.Maybe
import Data.List
import Primes

main = putStrLn $ show compute

compute = nthPrime 10001

nthPrime n =
    let
        allPrimesInfo = iterate (next) (PrimesInfo [] 1)
        primesSets = map (foundSoFar) allPrimesInfo
        rightSet = find (\set -> length set >= n) primesSets
    in
        last.fromJust $ rightSet

data PrimesInfo = PrimesInfo {
    foundSoFar :: [Int],
    lastTested :: Int
}

next primesInfo =
    let
        next = lastTested primesInfo + 1
        primes = foundSoFar primesInfo
        isNextPrime = all (\p -> next `rem` p /= 0) primes
    in
        if isNextPrime then
            PrimesInfo (primes ++ [next]) next
        else
            PrimesInfo primes next