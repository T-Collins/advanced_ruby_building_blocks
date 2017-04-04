module Enumerable

	def my_each &codeblock
		if block_given?
			for i in 0..self.length-1
				codeblock.call(self[i])
			end
		else
			self.to_enum
		end
	end
	
	def my_each_with_index &codeblock
		if block_given? 
			for i in 0..self.length-1
				codeblock.call(self[i], i)
			end
		else
			self.to_enum
		end
	end
	
	def my_select &codeblock
		if block_given?
			result = []
			for i in 0..self.length-1
				(result << self[i]) if codeblock.call(self[i])
			end
			result
		else
			self.to_enum
		end
	end
	
	def my_all? &codeblock
		if block_given?
			self.my_select(&codeblock).length == self.length
		else
			self.my_select do |obj|
				obj
			end.length == self.length
		end
	end
	
	def my_any? &codeblock
		if block_given?
			self.my_select(&codeblock).length > 0
		else
			self.my_select do |obj|
				obj
			end.length > 0
		end
	end
	
	def my_none? &codeblock
		if block_given?
			self.my_select(&codeblock) == []
		else
			self.my_select do |obj|
				obj
			end == []
		end
	end
		
	def my_count &codeblock
		block_given? ? self.my_select(&codeblock).length : self.length
	end
	
	def my_map some_proc = (no_proc = true; nil), &codeblock
		result = []
		if no_proc
			if block_given?
				for i in 0..self.length-1
					result << codeblock.call(self[i])
				end
			else
				return self.to_enum
			end
		else
			for i in 0..self.length-1
				result << some_proc.call(self[i])
			end
		end
		result
	end

	def my_inject *args, &codeblock
		if block_given?
			total = self[0] if args.length == 0
			total = codeblock.call(args[0], self[0]) unless args.length == 0
			for i in 1..self.length-1
				total = codeblock.call(total, self[i])
			end
		elsif args.length == 1
			total = self[0]
			for i in 1..self.length-1
				total = total.send(args[0], self[i])
			end
		elsif args.length == 2
			total = args[0]
			for i in 0..self.length-1
				total = total.send(args[1], self[i])
			end
		else
			return self.to_enum
		end
		total
	end
	
end
