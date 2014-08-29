def hello(name)
  "Hello, %s" % name
end

def starts_with_consonant?(s)
  result = false
  if /^[A-Z]/i=~s and not /^[AEIOU]/i=~s
    result = true
  end
  result
end

def binary_multiple_of_4?(s)
  if /^[01]*00$/=~s
    true
  else
    false
  end
end
puts hello('lkf')

puts starts_with_consonant?('ttt')
puts starts_with_consonant?('att')
puts starts_with_consonant?('5tt')


puts binary_multiple_of_4?('00010')
puts binary_multiple_of_4?('a100')
