module FunWithStrings
  def palindrome?
    # your code here
    s = self
    s = s.downcase.gsub(/[^a-z]/, '')
    return s==s.reverse
  end
  def count_words
    # your code here
    wc = {}
    s = self
    s.downcase.split(/[^a-z]/).each { |x| 
      if x.length>0 
        if wc.has_key? x
          wc[x] += 1
        else
          wc[x] = 1
        end
      end
    }
    return wc
  end
  def anagram_groups
    # your code here
    h = {}
    s = self.split(' ')
    s.each { |x|
      k = x.downcase.chars.sort.join
      if not h.has_key? k
        h[k] = [x]
      else
        h[k].push(x)
      end
    }
    return h.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
