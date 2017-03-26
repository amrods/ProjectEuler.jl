# https://projecteuler.net/problem=31

const coins = [1, 2, 5, 10, 20, 50, 100, 200]

function g() # very inefficient (brute force) but it works
    c = 0
    for p1 in 0:200, p2 in 0:100, p5 in 0:40, p10 in 0:20, p20 in 0:10, p50 in 0:4, p100 in 0:2, p200 in 0:1
        if dot(Int[p1, p2, p5, p10, p20, p50, p100, p200], coins) == 200
            c += 1
        end
    end
    return c
end
g() |> println
