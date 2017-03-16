
def search_array(arr, int)
  idx = 0
  while idx < arr.length
    if arr[idx] == int
      return idx
    else
      nil
    end
  idx +=1 
 end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)




def fib(int)
  initial = [0, 1]
  until initial.length == int
    update = (initial[-2] + initial[-1])
    initial << update
  end
  return initial
end

p fib(6)
p fib(100).last == 218922995834555169026




# Bubble sort take array of integers and sort in descending order
# 1. Take first value of array
# 2. Evaluate to next value of array
# 3. Swap order if necessary
# 4. Repeat until all array values have been evaluated

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    # declare if swapped = false
    break if not swapped 
  end

  array
end

test = [2, 18, 6, 23, 78, 4, 1, 193]

p bubble_sort(test)

