# https://projecteuler.net/problem=35

using Primes

function iscircular(n::Int)
    ns = split(string(n),"")
    perms = [circshift(ns, i) for i in 1:length(ns)]
    c = 0
    for p in perms
        ps = parse(Int, join(p))
        c += isprime(ps)
    end
    return c == length(perms) ? true : false
end

pr = primes(1_000_000)

s = 0
for p in pr
    s += iscircular(p)
end
