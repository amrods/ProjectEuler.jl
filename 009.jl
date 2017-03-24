# https://projecteuler.net/problem=9

for a in 1:1000, b in a:1000, c in b:1000
    if a^2 + b^2 == c^2 && a + b + c == 1000
        println(a*b*c)
        break
    end
end
