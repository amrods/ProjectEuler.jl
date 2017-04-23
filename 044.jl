# https://projecteuler.net/problem=44

const N = 3_000
pentagonal(n::Int) = div(n*(3n - 1), 2)

const pentset = [pentagonal(i) for i in 1:N]

function ispentagonal(n::Int)
    return n ∈ pentset
end

function g()
    D = pentagonal(N)
    ca = 0
    cb = 0
    for a in pentset, b in pentset
        if ispentagonal(a + b) && ispentagonal(a - b)
            if abs(a - b) < D
                D = abs(a - b)
                ca = a
                cb = b
            end
        end
    end
    return D
end

g() |> println
