def bubble_sort (array)
	i = 1
	while (i < array.length)
		for j in (0..(array.length-1-i))
			array[j], array[j+1] = array[j+1], array[j] if array[j] > array[j+1]
		end
		i += 1
	end
	array
end
			
		
puts bubble_sort([1,3,4,10,5,6,8,7,2,9]).join(" ")
