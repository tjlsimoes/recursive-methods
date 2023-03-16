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

# Sort values of roman_mapping hash so that two-lettered elements come first

values = roman_mapping.values.sort_by { |sign| sign.size}.reverse

p values

def roman_to_int(roman_mapping, values, roman, result = 0)
  return result if roman == ""

  values.each do |sign|
    
    if roman.match?(sign)

      result += roman_mapping.key(sign) # Count problem...

      roman.slice!(sign)

      p "sign: #{sign}, match: true, result: #{result}, roman: #{roman}, count: #{roman.count(sign)}."
      
      return roman_to_int(roman_mapping, values, roman, result) if roman.count(sign) > 0

    end
  end
end

  roman_to_int(roman_mapping, values, "MMMCMLXXIII")