# https://projecteuler.net/problem=92

function chain(n::Int)
    str = split(string(n), "")
    s = 0
    for d in str
        s += parse(Int, d)^2
    end
    return s
end

const dic = Dict{Int, Int}()

const dicchain = Dict{Int, Int}()

function storechain(n::Int)
    if !haskey(dic, n)
        dic[n] = chain(n)
    end
    return dic[n]
end

function fullchain(n::Int)
    r = n
    while r != 1 && r != 89
        r = storechain(r)
    end
    dicchain[n] = r
end

for i in 1:10_000_000-1
    fullchain(i)
end

sum(i == 89 for i in values(dicchain)) |> println
