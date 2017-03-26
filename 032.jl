# https://projecteuler.net/problem=32

function pandigital(s::String)
    ret = false
    c = 0
    if length(s) == 9
        for i in 1:9
            c += contains(s, string(i))
        end
        if c == 9
            ret = true
        end
    end
    return ret
end

const dic = Dict{Tuple{Int,Int}, Int}()
for i in 1:9999, j in 1:9999
    str = "$i"*"$j"*"$(i*j)"
    if pandigital(str)
        dic[i,j] = i*j
    end
end
values(dic) |> unique |> sum |> println
