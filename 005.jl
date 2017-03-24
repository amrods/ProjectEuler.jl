# https://projecteuler.net/problem=5

function isdiv(n::Int)
    sum(n % i for i in 1:20) == 0 ? true : false
end

function f()
    i = 1
    while !isdiv(i)::Bool
        i += 1
    end
    return i
end

f()
