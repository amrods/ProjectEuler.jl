# https://projecteuler.net/problem=23

using Primes

function factors(n::Int)
    f = [one(n)]
    for (p, e) in factor(n)
        f = reduce(vcat, f, [f*p^j for j in 1:e])
    end
    if length(f) == 1
        return [one(n)]
    else
        return sort!(f)[1:end-1]
    end
end

function isabundant(n::Int)
    sum(factors(n)) > n
end

const N = 28123

const numbers = collect(1:N)

const abundantnumbers = numbers[isabundant.(numbers) .== true]

const sumabundant = Vector{Int}(length(abundantnumbers)^2)

k = 1
for i in abundantnumbers, j in abundantnumbers
    sumabundant[k] = i + j
    k += 1
end

const sumabundant2 = unique(sumabundant)

const notsumabundant = setdiff(numbers, sumabundant2)

sum(notsumabundant) |> println
