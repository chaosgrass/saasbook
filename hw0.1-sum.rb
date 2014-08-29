def sum(arr)
  s = 0
  arr.each do |x| 
    s=s+x 
  end
  s
end

def max_2_sum(arr)
  s = 0
  arr.sort!{|x,y| y<=>x}
  n = 2
  if arr.length<n 
    n=arr.length 
  end
  0.upto(n-1) do |i|
    s += arr[i]
  end
  s
end

def sum_to_n?(arr, n)
  l = arr.length
  result = false
  0.upto(l-1) do |i|
    0.upto(l-1) do |j|
      if i!=j and arr[i]+arr[j]==n
        result = true
        break
      end
    end
  end
  if l==0 and n==0 
    result=true
  end
  result
end

#puts sum([1,2,3])
#puts max_2_sum([2,5,9,1,10])
#puts max_2_sum([2])
#puts max_2_sum([])

puts sum_to_n?([1,2],3)
puts sum_to_n?([1,3,5], 4)
puts sum_to_n?([1,3,5], 5)
puts sum_to_n?([], 0)
puts sum_to_n?([5], 5)


