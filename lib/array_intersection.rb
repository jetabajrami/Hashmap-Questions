#Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.
#Time complexity: O(n+m)
#Space complexity: O(n)

def intersection(list1, list2)

  hash = Hash.new

  list1.each do |value|
    hash[value] = 1
  end

  new_list = Array.new
  list2.each do |element|
    if hash[element] == 1
      new_list << element
    end
  end

  return new_list
end


