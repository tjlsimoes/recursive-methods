def fibs(number)

    a = [0, 1]


    if number == 1
        return [a[0]]
    elsif number == 2 
        return [a[0..1]]
    elsif number > 2
        2.upto(number - 1) do |i|

            a[i] = a[i - 1] + a[i - 2]
        end
        return a
    end

end

p fibs(8)


def fibs_rec(number, array = [])

    if number == 1
        return array << 0 
    elsif number == 2
        return array << 1
    elsif number > 2 
        return array << fibs_rec(number - 1, array) + fibs_rec(number - 2, array) if number - 2 >= 0
    end

    array
end

fibs_rec(8)