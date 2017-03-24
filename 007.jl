# https://projecteuler.net/problem=7

using Primes

function f()
    p = 0
    n = 1
    while p < 10_001
        n += 1
        if isprime(n)
            p += 1
        end
    end
    return n
end

f() |> println
