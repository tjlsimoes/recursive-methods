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