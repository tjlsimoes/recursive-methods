# Define a recursive function that takes an argument n 
#  and returns the fibonacci value of that position. 
#  The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
#  So fib(5) should return 5 and fib(6) should return 8.

def fib(n)
    if n == 0
        0
    elsif n == 1
        1
    else 
        (fib(n - 1) + fib(n - 2))
    end
end

p fib(5)
p fib(6)