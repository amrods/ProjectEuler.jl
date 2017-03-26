# https://projecteuler.net/problem=22

txt = vec(readcsv("p022_names.txt", String))

sort!(txt)

dic = Dict(string(Char(64+i)) => i for i in 1:26)

function val(s::String)
    [dic[string.(split(s,""))[i]] for i in 1:length(s)]
end

dot(sum.(val.(txt)), 1:length(txt)) |> println
