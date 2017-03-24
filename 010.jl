# https://projecteuler.net/problem=10

using Primes

function f()
    s = 0
    for i in 1:2_000_000
        if isprime(i)
            s += i
        end
    end
    return s
end

f() |> println
