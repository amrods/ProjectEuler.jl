# https://projecteuler.net/problem=12

using Primes

function triangle(n::Int)
    sum(i for i in 1:n)
end

function factors(n::Int)
    f = [one(n)]
    for (p, e) in factor(n)
        f = reduce(vcat, f, [f*p^j for j in 1:e])
    end
    if length(f) == 1
        return [one(n), n]
    else
        return sort!(f)
    end
end

function g()
    x = 1
    s = triangle(x)
    while length(factors(s)) <= 500
        x += 1
        s = triangle(x)
    end
    return s
end

g() |> println
