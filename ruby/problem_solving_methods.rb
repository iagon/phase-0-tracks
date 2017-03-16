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
