roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  

values = roman_mapping.values

two_values = values.select { |value| value.length == 2} # assigns two-lettered values to separate array 
one_values = values.select { |value| value.length == 1} # same as above only for one-lettered values

def roman_to_int(roman_mapping, two_values, one_values, roman, result = 0)
    return result if roman == 0
    two_values.each do |sign| 

        if roman.match?(sign)

            result = result.to_i
            result += roman_mapping.key(sign)

            roman.slice!(sign)

            p "sign: #{sign}, match: true, result: #{result}, roman: #{roman} "

        end

        
    end

    one_values.each do |sign| 

        count = roman.count(sign)

        result += roman_mapping.key(sign) * count
        p "sign: #{sign}, count: #{count}, result: #{result}, roman: #{roman} "
        
    end
    result
end

p one_values
p two_values

p "MMMCMLXXIII"
roman_to_int(roman_mapping, two_values, one_values, "MMMCMLXXIII", result = "")
