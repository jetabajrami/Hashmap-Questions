#Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
#Time complexity: O(n+m)
#Space complexity: O(n)

def palindrome_permutation?(string)
  return true if string == ""

  hash = Hash.new

  string.chars.each do |char|
    if hash[char].nil?
      hash[char] = 1
    elsif 
      hash[char] += 1
    end
  end

  i = 0
  hash.each_value do |value|
    if value % 2 != 0 
      i += 1
    end
  end

  if i > 1
    return false
  else
    return true
  end
end
