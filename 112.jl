# https://projecteuler.net/problem=112

function isbouncy(n::Int)
    n < 100 && return false
    d = digits(n)
    d == sort(d) || d == sort(d, rev = true) ? false : true
end

function g()
    p = 0.0
    s = 0
    n = 0
    while p < .99
        n += 1
        if isbouncy(n)
            s += 1
        end
        p = s/n
    end
    return n
end

g() |> println
