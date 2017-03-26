# https://projecteuler.net/problem=16

const N = 2^big(1000)
sum(parse(Int, string(N)[i]) for i in 1:length(string(N))) |> println
