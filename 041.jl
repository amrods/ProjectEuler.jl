# https://projecteuler.net/problem=41

using Primes

const pr = primes(999_999_999)

function pandigital(n::Int, p::Int)
    s = string(n)
    ret = false
    if length(s) == p
        c = 0
        for i in 1:p
            c += contains(s, string(i))
        end
        if c == p
            ret = true
        end
    end
    return ret
end

m = 0
for p in pr
    s = string(p)
    if pandigital(p, length(s))
        if p > m
            m = p
        end
    end
end
m |> println
