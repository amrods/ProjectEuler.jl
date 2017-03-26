# https://projecteuler.net/problem=46

using Primes

function goldbach(n::Int)
    plist = primes(n)
    ret = false
    for p in plist, k in 1:ceil(sqrt(n/2))
        if n == p + 2k^2
            ret = true
            break
        end
    end
    return ret
end

n = 1
while goldbach(2n + 1) || isprime(2n + 1)
    n += 1
end
println(2n + 1)
