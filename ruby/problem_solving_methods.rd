
# create array
# write method that goes through the array and find the called number
# return the index



array = [14, 24, 34, 44, 54]

def search(array, n)
integer = nil
 array.length.times do |i|
   if array[i] == n
     integer = i
   end
 end 
p integer
end

search(array, 44)


# initiate array that is empty but intialize with 100
# creater method that starts w 0 and 1 set to variables and add
# math = 0 + 1 = 2 + 1 = 3 + 2 = 5 + 3 = 8
# call array run through it until adds up each number til the number called


def fib(n)
  arr = []
  arr[0] = 0
  arr[1] = 1  
  while n > arr.length
    arr.push(arr[-1] + arr[-2])
  end 
  arr 
end 
fib(100)


# Psuedocode: We are given an array of integers. We want to traverse through the array and return the array sorted from lowest to highest. 
# We start by defining a method. If the array is less than or equal to one in length, we want to return the array because it is already sorted. 
# We define an is_sorted variable and set it to false. We then set up a loop to loop through the array. The loop then compares the first two numbers in the array. If the first is greater than the second, they are switched. If the first number is less than the second number, it is left alone and the loop moves on to the next set of numbers. 
# Once the array is sorted, the loop will stop. 


def sort_arr(arr) 
  if arr.length <= 1 
    return arr
    else 
      loop do 
        is_sorted = false
        (arr.length - 1). times do |i|
          if arr[i] > arr[i+1] 
            arr[i], arr[i+1] = arr[i+1], arr[i]
            is_sorted = true 
          end 
        end
        break unless is_sorted
      end
    arr
  end
end
sort_arr([3,2,1])
