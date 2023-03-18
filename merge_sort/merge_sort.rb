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