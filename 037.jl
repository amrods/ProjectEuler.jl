# https://projecteuler.net/problem=037

using Primes

function nextprime(n::Int)
    (n == 0 || n == 1) && return 2
    len = 0
    p = Vector{Int}()
    while len == 0
        n += 1
        p = primes(n, n+1)
        len = length(p)
    end
    return p[end]
end

function istruncprime(n::Int)
    !isprime(n) && return false
    d = digits(n)
    len = length(d)
    s = 0
    for j in 1:len
        s += isprime(sum(Int[ d[i]*10^(i-1) for i in 1:j ]))
        s += isprime(sum(Int[ d[end-i+1]*10^(j-i) for i in 1:j ]))
    end
    s == 2len ? true : false
end

function g()
    s = 0
    p = 0
    n = 9
    while s < 11
        n = nextprime(n)
        if istruncprime(n)
            s += 1
            p += n
        end
    end
    return p
end

g() |> println
