=begin
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

=end


