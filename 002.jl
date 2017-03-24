# https://projecteuler.net/problem=2

const dic = Dict{Int, Int}()
dic[1] = 1
dic[2] = 2

function fib(n::Int)
    if haskey(dic, n)
        return dic[n]
    else
        dic[n] = fib(n-1) + fib(n-2)
        return dic[n]
    end
end

n = 1
s = 0
while fib(n) <= 4_000_000
    if fib(n) % 2 == 0
        s += fib(n)
    end
    n += 1
end
println(s)
