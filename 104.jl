# https://projecteuler.net/problem=104

const dic = Dict{Int, BigInt}()

function fib(n::Int)
    if n <= 2
        return big(1)
    elseif haskey(dic, n)
        return dic[n]
    else
        dic[n] = fib(n-1) + fib(n-2)
        pop!(dic, n-3, nothing) # to save memory
        return dic[n]
    end
end

function pandigital(n::BigInt)
    s = string(n)
    len = length(s)
    f = s[1:min(9,len)]
    l = s[max(1,len-9+1):end]
    ret = false
    c = 0
    for i in 1:9
        c += contains(f, string(i))
        c += contains(l, string(i))
    end
    if c == 18
        ret = true
    end
    return ret
end

function g()
    n = 1
    while !pandigital(fib(n))
        n += 1
    end
    return n
end

g() |> println
