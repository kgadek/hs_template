import Criterion.Main

fib :: Int -> Integer
fib n = fib' !! n
  where fib' = 1:1:zipWith (+) fib' (tail fib')

main ::  IO ()
main = defaultMain [
    bgroup "bloh" [
      bench "takie tam" $ whnf fib 100
    ]
  ]

