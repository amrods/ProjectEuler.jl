# https://projecteuler.net/problem=1

s = 0
for i in 1:999
    if i % 5 == 0 || i % 3 == 0
        s += i
    end
end
println(s)
