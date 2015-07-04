module TextStrings
	def random(n)
		range = [*'0'..'9',*'A'..'Z',*'a'..'z']
		Array.new(n){ range.sample }.join
	end
end