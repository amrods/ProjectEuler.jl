# https://projecteuler.net/problem=29

const A = BigInt[]
for a in 2:100, b in 2:100
    p = a^big(b)
    if p ∉ A
        push!(A, p)
    end
end
length(A) |> println
