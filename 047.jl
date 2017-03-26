# https://projecteuler.net/problem=47

using Primes

function distinct(n1::Int, n2::Int, n3::Int, n4::Int)
    f1 = sort(collect(keys(factor(n1))))
    f2 = sort(collect(keys(factor(n2))))
    f3 = sort(collect(keys(factor(n3))))
    f4 = sort(collect(keys(factor(n4))))
    ret = false
    if (f1 != f2 != f3 != f4) && (length(f1) == 4) && (length(f2) == 4) && (length(f3) == 4) && (length(f4) == 4)
        ret = true
    end
    return ret
end

n = 2
while !distinct(n, n+1, n+2, n+3)
    n += 1
end
println(n)
