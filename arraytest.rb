# array1 = [[1,2,3],[4,5,6],[7,8,9]]
# array2 = [43,10,11]
#
# if
# result = array1.map{|inner_array| inner_array - array2}
# result.any?{|inner_array| inner_array.empty?}
#
# puts true
# else
#   puts false
# end

a = [[1,2,3],[4,5,6],[7,8,9]]
integers = [3,4,5,6,8]

a.any? { |sub_array| sub_array.all? { |item| integers.include? item } }

puts 
