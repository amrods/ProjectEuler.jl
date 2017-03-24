# https://projecteuler.net/problem=4

m = 0
for n1 in 100:999, n2 in 100:999
    p = n1*n2
    if string(p) == reverse(string(p))
        if p > m
            m = p
        end
    end
end
println(m)
