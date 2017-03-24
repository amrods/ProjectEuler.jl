# https://projecteuler.net/problem=17

# create dictionary, keys are numbers, values are spelling
const dic = Dict{Int, String}()
dic[0] = ""
dic[1] = "One"
dic[2] = "Two"
dic[3] = "Three"
dic[4] = "Four"
dic[5] = "Five"
dic[6] = "Six"
dic[7] = "Seven"
dic[8] = "Eight"
dic[9] = "Nine"
dic[10] = "Ten"
dic[11] = "Eleven"
dic[12] = "Twelve"
dic[13] = "Thirteen"
dic[14] = "Fourteen"
dic[15] = "Fifteen"
dic[16] = "Sixteen"
dic[17] = "Seventeen"
dic[18] = "Eighteen"
dic[19] = "Nineteen"
dic[20] = "Twenty"
dic[30] = "Thirty"
dic[40] = "Forty"
dic[50] = "Fifty"
dic[60] = "Sixty"
dic[70] = "Seventy"
dic[80] = "Eighty"
dic[90] = "Ninety"
dic[100] = "Hundred"
dic[1000] = "Thousand"

# function for spelling/counting
function f(n::Int)
    s = string(n)
    if n <= 20
        p = dic[n]
    elseif length(s) == 2
        tens = string(s[1])
        unit = string(s[end])
        p = dic[parse(Int, tens*"0")] * dic[parse(Int, unit)]
    elseif length(s) == 3
        hunds = string(s[1])
        tens = string(s[2])
        unit = string(s[3])
        if n ∈ 100:100:900
            p = dic[parse(Int, hunds)] * dic[100]
        elseif parse(Int, tens*unit) > 20
            p = dic[parse(Int, hunds)] * dic[100] * "And" *
                dic[parse(Int, tens*"0")] * dic[parse(Int, unit)]
        else
            p = dic[parse(Int, hunds)] * dic[100] * "And" *
                dic[parse(Int, tens*unit)]
        end
    elseif n == 1000
        p = dic[1]*dic[n]
    end
    return length(p)
end

println(sum(f.(1:1000)))
