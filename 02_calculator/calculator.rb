#write your code here
def add(arg1, arg2)
    arg1 + arg2
end

def subtract(arg1, arg2)
    arg1 - arg2
end

def sum(arg)
    result = 0
    arg.each { |num| result += num }
    return result
end

def multiply(arg)
    result = 1
    arg.each { |num| result *= num }
    return result
end

def power(arg1, arg2)
    arg1 ** arg2
end

def factorial(n)
    if n == 0
        return 1
    else
        (1..n).inject(:*)
    end
end