# https://projecteuler.net/problem=3

using Primes

const N = 600851475143

maximum(keys(factor(N))) |> println
