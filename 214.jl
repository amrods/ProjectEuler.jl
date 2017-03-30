# https://projecteuler.net/problem=214

using Primes

function ϕ(n::Int)
    f = keys(factor(n))
    pr = 1
    for p in f
        pr *= (1 - 1//p)
    end
    return convert(Int, n * pr)
end

const dicchain = Dict{Int, Int}()
dicchain[1] = 1

function chainlength(n::Int)
    if !haskey(dicchain, n)
        r = n
        s = 0
        while r != 1 && !haskey(dicchain, r)
            r = ϕ(r)
            s += 1
        end
        dicchain[n] = s + chainlength(r)
    end
    return dicchain[n]
end

const N = 40_000_000
const pr = primes(N)

for i in pr
    chainlength(i)
end

function g()
    s = 0
    for i in keys(dicchain)
        if dicchain[i] == 25
            s += i
        end
    end
    return s
end

g() |> println
