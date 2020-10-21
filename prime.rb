# Add  code here!

# Given an input number (int), check whether it is evenly 
# divisible by any prime number between 2 and sqrt(int).
# If so, then (int) is composite, otherwise it is prime

def prime?( int )
    arr = (2..int).to_a

    # The .one? method checks if exactly one element returns true. If the number is prime, 
    # then only the last element "int % num" will have a remainder of 0. Otherwise, it returns false

    arr.one? { |num|
        int % num == 0
    }
end