# https://projecteuler.net/problem=24

using Combinatorics

p = nthperm(collect(0:9), 1_000_000)

join(p) |> println
