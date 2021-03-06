module P0002 where

{-
    Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
    By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
-}

main = putStrLn $ show compute

compute =
    sum.filter even $ takeWhile (<= 4000000) $ map (nth) fibs

fibs =
    iterate (next) (FibRecord 0 0 1)

data FibRecord = FibRecord  {   nMinusTwo :: Int,
                                nMinusOne :: Int,
                                nth :: Int
                            } deriving (Show)

next fibRecord =
    let
        minusTwo = nMinusOne fibRecord
        minusOne = nth fibRecord
        n = minusTwo + minusOne
    in
    FibRecord minusTwo minusOne n