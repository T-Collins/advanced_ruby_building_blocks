def bubble_sort_by array, &code_block
	i = 1
	while (i < array.length)
		for j in (0..(array.length-1-i))
			array[j], array[j+1] = array[j+1], array[j] if code_block.call(array[j], array[j+1]) >0
		end
		i += 1
	end
	puts array
end
			
		
bubble_sort_by(["hello", "frog", "bishop", "a", "me"]) do |left, right| 
	left.length - right.length 
end

