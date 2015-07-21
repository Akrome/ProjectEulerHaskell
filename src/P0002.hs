module P0002 where

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