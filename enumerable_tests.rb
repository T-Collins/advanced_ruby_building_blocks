puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_each"
#test my_each 
test_array = [1,2,3,4,5,6,7]
test_array.my_each do |element| 
	element = element + 1
end
puts test_array.join(" ")
puts ("--")

test_array = [1,2,3,4,5,6,7]
test_array.each do |element| 
	element = element + 1
end
puts test_array.join(" ")
puts("----")

test_array = [1,2,3,4,5,6,7]
test_array.my_each do |element| 
	puts element + 1
end
puts test_array.join(" ")
puts ("--")

test_array = [1,2,3,4,5,6,7]
test_array.each do |element| 
	puts element + 1
end
puts test_array.join(" ")
puts ("----")
#end test my_each

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_each_with_index"
#test my_each_with_index
test_array = [5,2,7,4,1,6,3]
test_array.my_each_with_index do |element, index| 
	element = element + 1
end
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
test_array.each_with_index do |element, index| 
	element = element + 1
end
puts test_array.join(" ")
puts("----")

test_array = [5,2,7,4,1,6,3]
test_array.my_each_with_index do |element, index|
	puts "#{index}) : #{element+1}"
end
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
test_array.each_with_index do |element, index| 
	puts "#{index}) : #{element+1}"
end
puts test_array.join(" ")
puts ("----")
#end test my_each_with_index

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_select"
#test my_select
test_array = [5,2,7,4,1,6,3]
puts (test_array.my_select do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.select do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("----")
#end test my_select

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_all?"
#test my_all?
test_array = [5,2,7,4,1,6,3]
puts (test_array.my_all? do |element| 
	element%2 == 0
end)
puts test_array.join(" ")

puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.all? do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("----")

test_array = [5,2,7,4,1,6,3]
puts (test_array.my_all? do |element| 
	element%1 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.all? do |element| 
	element%1 == 0
end)
puts test_array.join(" ")
puts ("----")
#end test my_all?
puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_any?"
#test my_any?
test_array = [5,2,7,4,1,6,3]
puts (test_array.my_any? do |element| 
	element%3 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.any? do |element| 
	element%3 == 0
end)
puts test_array.join(" ")
puts ("----")

test_array = [5,2,7,4,1,6,3]
puts (test_array.my_any? do |element| 
	element%8 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.any? do |element| 
	element%8 == 0
end)
puts test_array.join(" ")
puts ("----")
#end test my_any?

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_none?"
#test my_none?
test_array = [5,2,7,4,1,6,3]
puts (test_array.my_none? do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.none? do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("----")

test_array = [5,2,7,4,1,6,3]
puts (test_array.my_none? do |element| 
	element%8 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.none? do |element| 
	element%8 == 0
end)
puts test_array.join(" ")
puts ("----")
#end test my_none?

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_count"
#test my_count
test_array = [5,2,7,4,1,6,3]
puts (test_array.my_count do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("--")

test_array = [5,2,7,4,1,6,3]
puts (test_array.count do |element| 
	element%2 == 0
end)
puts test_array.join(" ")
puts ("----")

test_array = [5,2,7,4,1,6,3]
puts (test_array.count)
puts test_array.join(" ")
puts ("----")

test_array = [5,2,7,4,1,6,3]
puts (test_array.my_count)
puts test_array.join(" ")
puts ("--")

#end test my_count?

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_map"
#test my_map 
test_array = [1,2,3,4,5,6,7]
result_array = test_array.my_map do |element| 
	element = element + 1
end
puts result_array.join(" ")
puts ("--")

test_array = [1,2,3,4,5,6,7]
result_array = test_array.map do |element| 
	element = element + 1
end
puts result_array.join(" ")
puts("----")

test_array = [1,2,3,4,5,6,7]
result_array = test_array.my_map do |element| 
	puts element + 1
end
puts result_array.join(" ")
puts ("--")

test_array = [1,2,3,4,5,6,7]
result_array = test_array.map do |element| 
	puts element + 1
end
puts result_array.join(" ")
puts ("----")
#end test my_map

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_inject"
#test my_inject 
test_array = [1,2,3,4,5,6,7]
result = test_array.my_inject do |sum, n| 
	sum = sum + n
end
puts result
puts ("--")

test_array = [1,2,3,4,5,6,7]
result = test_array.inject do |sum, n| 
	sum = sum + n
end
puts result
puts("----")

test_array = [2,1,3,4,5,6,7]
result = test_array.my_inject(1) do |product, n| 
	product = product*n
end
puts result
puts ("--")

test_array = [2,1,3,4,5,6,7]
result = test_array.inject(1) do |product, n| 
	product = product*n
end
puts result
puts("----")
#end test my_inject

puts ("-+-+-+-+-+-+-+-+-+-")
puts "multiply_els"

def multiply_els(array)
		array.my_inject { |product, x| product = product*x }
end

puts multiply_els([2,4,5])

puts ("-+-+-+-+-+-+-+-+-+-")
puts "my_map proc test"

puts("proc")

some_proc = Proc.new do |element| 
	element = element + 1
end

test_array = [1,2,3,4,5,6,7]
result_array = test_array.my_map some_proc
puts result_array.join(" ")
puts ("--")
puts "block"
test_array = [1,2,3,4,5,6,7]
result_array = test_array.my_map do |element| 
	element = element + 1
end
puts result_array.join(" ")
puts ("--")

puts ("-+-+-+-+-+-+-+-+-+-")
puts "enumerator return tests"
puts [5,2,7,4,1,6,3].each
puts [5,2,7,4,1,6,3].my_each

puts ("-+-+-+-+-+-+-+-+-+-")
puts "inject symbol tests"

test_array = [2,1,3,4,5,6,7]
result = test_array.my_inject(1, :*)
puts result
puts("--")
test_array = [2,1,3,4,5,6,7]
result = test_array.inject(1, :*)
puts result
puts("----")

test_array = [2,1,3,4,5,6,7]
result = test_array.my_inject(:+)
puts result
puts("--")
test_array = [2,1,3,4,5,6,7]
result = test_array.inject(:+)
puts result
puts("----")

#Similar errors obtained for inject and my_inject when a single non-symbol argument is given
=begin
test_array = [2,1,3,4,5,6,7]
result = test_array.inject(12)
puts result

test_array = [2,1,3,4,5,6,7]
result = test_array.my_inject(12)
puts result
puts("----")
=end
