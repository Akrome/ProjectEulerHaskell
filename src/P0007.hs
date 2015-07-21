module P0007 where
import Data.Maybe
import Data.List

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