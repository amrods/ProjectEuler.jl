# https://projecteuler.net/problem=99

const data = readcsv("p099_base_exp.txt", BigInt)

function g()
    m = big(0)
    ind = 0
    for i in 1:size(data, 1)
        n = data[i,1]^data[i,2]
        if n > m
            m = n
            ind = i
        end
    end
    return ind
end
g() |> println
