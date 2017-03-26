# https://projecteuler.net/problem=25

const dic = Dict{Int, BigInt}()
dic[1] = 1
dic[2] = 1

function fib(n::Int)
    if haskey(dic, n)
        return dic[n]
    else
        dic[n] = fib(n-1) + fib(n-2)
        return dic[n]
    end
end

n = 1
while length(string(fib(n))) < 1000
    n += 1
end
println(n)
