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

Sort values of roman_mapping hash so that two-lettered elements come first

values = roman_mapping.values.sort_by { |sign| sign.size}.reverse

p values

def roman_to_int(roman_mapping, values, roman, result = 0)
  return result if roman == ""

  values.each do |sign|
    
    if roman.match?(sign)

      result += roman_mapping.key(sign) 

      roman.slice!(sign)

      p "sign: #{sign}, match: true, result: #{result}, roman: #{roman}, count: #{roman.count(sign)}."
      return roman_to_int(roman_mapping, values, roman, result) if roman.count(sign) > 0
    end
  end
  result
end

roman_to_int(roman_mapping, values, "MMMCMLXXIII")


# Solution

# roman_mapping = {
#   "M" => 1000,
#   "CM" => 900,
#   "D" => 500,
#   "CD" => 400,
#   "C" => 100,
#   "XC" => 90,
#   "L" => 50,
#   "XL" => 40,
#   "X" => 10,
#   "IX" => 9,
#   "V" => 5,
#   "IV" => 4,
#   "I" => 1
# }

# def roman_to_integer(roman_mapping, str, result = 0)
#   return result if str.empty?
#   roman_mapping.keys.each do |roman|
#     if str.start_with?(roman)
#       result += roman_mapping[roman]
#       str = str.slice(roman.length, str.length)
#       return roman_to_integer(roman_mapping, str, result)
#     end
#   end
# end

# p roman_to_integer(roman_mapping, "MMMCMLXXIII")