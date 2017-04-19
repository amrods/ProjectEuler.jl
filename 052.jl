# https://projecteuler.net/problem=052

function crit(n::Int, s::Int)
    dn = sort(digits(n))
    ds = sort(digits(s*n))
    ds == dn ? true : false
end

function g()
    n = 0
    t = true
    while t
        n += 1
        t = sum(crit(n, i) for i in 2:6) != 5
    end
    return n
end

g() |> println
