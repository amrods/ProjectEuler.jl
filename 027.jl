# https://projecteuler.net/problem=27

using Primes

function f(n::Int, a::Int, b::Int)
    n^2 + a*n + b
end

m = 0
ap = 0
bp = 0
for a in -1000:1000, b in -1000:1000
    n = 0
    c = 1
    while isprime(f(n, a, b))
        n += 1
        c += 1
    end
    if c > m
        m = c
        ap = a
        bp = b
    end
end
println(ap*bp)
