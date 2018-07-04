# given a sorted array of only integers where every element appears
# twice except for one element which appears once. Find this element
# in O(logn) time and O(1) space!

def findLoner(arr)
  return arr[0] if arr.length == 1
  m = arr.length/2
  
  if arr[m] == arr[m-1]
    m -= 1
  end
  return arr[m] if arr[m] != arr[m+1]

  l = arr.take(m)
  r = arr.drop(m)
  if r.length%2 == 1
    return findLoner(r)
  else
    return findLoner(l)
  end

end
