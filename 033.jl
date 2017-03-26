# https://projecteuler.net/problem=33

function iscancelling(n::Int, d::Int)
    ret = false
    if n < d
        ns = Set(string(n))
        ds = Set(string(d))
        common = intersect(ns, ds)
        if length(common) == 0
            ret = false
        else
            r = n//d
            pn = setdiff(ns, common)
            pd = setdiff(ds, common)
            (length(pn) == 0) ? (pn = Set(string(n)[1])) : nothing
            (length(pd) == 0) ? (pd = Set(string(d)[1])) : nothing
            nn = parse(Int, collect(pn)[1])
            dd = parse(Int, collect(pd)[1])
            if nn//dd == r
                ret = true
            end
        end
    end
    return ret
end

const dic = Dict{NTuple{2, Int}, Rational{Int}}()
for n in 11:99, d in 11:99
    if (n % 10 == 0) || (d % 10 == 0)
        continue
    end
    if iscancelling(n, d)
        dic[n,d] = n//d
    end
end

prod(values(dic)) |> den |> println
