#  Define a recursive function that takes an argument n 
#  and prints "n bottles of beer on the wall", 
#  "(n-1) bottles of beer on the wall", ..., 
#  "no more bottles of beer on the wall".

def bottles(n)
    if n == 0
        puts "No more bootles of beer on the wall."
    else 
        puts "#{n} bottles of beer on the wall."
        bottles(n - 1)
    end
end

bottles(5)