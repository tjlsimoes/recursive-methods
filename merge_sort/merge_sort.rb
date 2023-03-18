def merge_sort(array, result = [])

    length = array.length

    if length == 1

        return array
    else

        lhalf = merge_sort(array[0...length/2])
        rhalf = merge_sort(array[length/2..])

        while lhalf.length > 0 || rhalf.length > 0

            if lhalf.length == 0 && rhalf.length > 0

                result += rhalf
                rhalf.slice!(0..(rhalf.length - 1))

            elsif rhalf.length == 0 && lhalf.length > 0

                result += lhalf
                lhalf.slice!(0..(lhalf.length - 1))

            elsif lhalf[0] > rhalf[0]
                
                result << rhalf.shift

            elsif lhalf[0] < rhalf[0]
                
                result << lhalf.shift
       
            end

        end

        p "lhalf: #{lhalf}; rhalf: #{rhalf}, result: #{result}"

        result
    end
    
end


merge_sort([5, 2, 1, 3, 6, 4])


# Ganthology solution: https://github.com/Ganthology/ruby_recursion/blob/main/lib/merge_sort.rb

def merges_sort(array)
    # base case
    return array if array.length < 2
  
    middle = array.length / 2
    # sort left
    left_half = merge_sort(array[0...middle])
    # sort right
    right_half = merge_sort(array[middle..array.length])
    # merge two halves(sort)
  
    sorted = []
    # compare until one half is empty
    until left_half.empty? || right_half.empty?
      # one pointer in each half comparing their current values
      # smaller values pushed to the sorted array
      left_half.first <= right_half.first ? sorted << left_half.shift : sorted << right_half.shift
    end
  
    sorted + left_half + right_half
  end
  
  p merges_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])