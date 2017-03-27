# https://projecteuler.net/problem=43

using Combinatorics

function prop(n::Vector{Int})
    s = join(string.(n))
    d = Vector{String}(10)
    for i in 1:10
        d[i] = string(s[i])
    end
    ret = false
    if parse(Int, d[2]*d[3]*d[4]) % 2 == 0
        if parse(Int, d[3]*d[4]*d[5]) % 3 == 0
            if parse(Int, d[4]*d[5]*d[6]) % 5 == 0
                if parse(Int, d[5]*d[6]*d[7]) % 7 == 0
                    if parse(Int, d[6]*d[7]*d[8]) % 11 == 0
                        if parse(Int, d[7]*d[8]*d[9]) % 13 == 0
                            if parse(Int, d[8]*d[9]*d[10]) % 17 == 0
                                ret = true
                            end
                        end
                    end
                end
            end
        end
    end
    return ret
end

pr = permutations(0:9, 10)

s = 0
for p in pr
    s =
    if prop(p)
        s += parse(Int, join(string.(p)))
    end
end
s |> println
