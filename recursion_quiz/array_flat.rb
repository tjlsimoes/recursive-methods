# Define a recursive function that flattens an array. 
# The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] 
# and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].


def flat(input_array)
    output_array = []
    recursion(0, input_array, output_array)
    output_array
end

def recursion(index, input_array, output_array)

    if (index >= input_array.length)
        return
    elsif (input_array[index].kind_of?(Array))
        recursion(0, input_array[index], output_array)
    else 
        output_array.push(input_array[index])
    end

    recursion(index + 1, input_array, output_array)

end

p flat([[1, 2], [3, 4]])
p flat([[1, [8, 9]], [3, 4]])

# Solution adapted from: https://www.freecodecamp.org/news/flatten-array-recursion/

# Proper solution:

def flatten(array, result = [])
    array.each do |element|
      if element.kind_of?(Array)
        flatten(element, result)
      else
        result << element
      end
    end 
    result
  end

p  flatten([[1, 2], [3, 4]])