# https://projecteuler.net/problem=14

function succ(n::Int)
    if iseven(n)
        return div(n, 2)
    else
        return 3n + 1
    end
end

function seq(n::Int)
    m = n
    s = 1
    while succ(m) != 1
        m = succ(m)
        s += 1
    end
    return s + 1
end

n = 0
m = 0
for i in 1:999_999
    s = seq(i)
    if s > n
        n = s
        m = i
    end
end
println(m)
