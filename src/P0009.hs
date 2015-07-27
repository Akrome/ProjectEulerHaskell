module P0009 where

{-
    A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    a2 + b2 = c2
    For example, 32 + 42 = 9 + 16 = 25 = 52.
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
-}

main = putStrLn $ show compute

compute =
    let
        n = 1000
    in
        head.triplets $ n

triplets n = [Triplet a b c | a <- [1..n], b<-[a+1..n], c<-[b+1..n], a*a + b*b == c*c, a+b+c == n]

data Triplet = Triplet {
    a :: Int,
    b :: Int,
    c :: Int
} deriving (Show)