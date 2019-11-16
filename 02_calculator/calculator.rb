#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum array
    sum = 0
    array.each do |i|
        sum += i
    end
    sum
end

def multiply a, *more
    sum = a
    more.each do |i|
        sum *= i
    end
    sum
end

def power a, b
    a ** b
end

def factorial n
    if n == 0
        1
    else
        
        sum = n
        
        (n - 1).times do
            sum *= n - 1
            n -= 1
        end

        sum
    end
end