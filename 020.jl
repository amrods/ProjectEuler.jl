# https://projecteuler.net/problem=20

const N = factorial(big(100))
sum(parse(Int, string(N)[i]) for i in 1:length(string(N))) |> println
