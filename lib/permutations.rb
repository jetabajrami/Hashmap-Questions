#Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
#Time complexity: O(n+m)
#Space complexity: O(n)

def permutations?(string1, string2)
  return false if string1.length != string2.length
 
  hash = Hash.new

  string1.chars.each do |char|
    hash[char] = 1
  end

  string2.chars.each do |char|
    if hash.key? char
      hash.delete (char)
    end
  end

  return hash.empty?
end




