# https://projecteuler.net/problem=45

triangle(n::Int) = div(n*(n + 1), 2)
function istriangle(n::Int)
    i = 1
    while triangle(i) < n
        i += 1
    end
    triangle(i) == n ? true : false
end

pentagonal(n::Int) = div(n*(3n - 1), 2)
function ispentagonal(n::Int)
    i = 1
    while pentagonal(i) < n
        i += 1
    end
    pentagonal(i) == n ? true : false
end

hexagonal(n::Int) = n*(2n - 1)
function ishexagonal(n::Int)
    i = 1
    while hexagonal(i) < n
        i += 1
    end
    hexagonal(i) == n ? true : false
end


function g()
    n = 285 + 1
    t = triangle(n)
    while !(istriangle(t) && ispentagonal(t) && ishexagonal(t))
        n += 1
        t = triangle(n)
    end
    return t
end

g() |> println
