class Multiples
	def self.calculation(target)
		target_string = (1...target)
		divisors_string = []
		target_string.each do |i|
			divisors_string << i if i % 3 == 0 || i % 5 == 0
		end
		divisors_string.inject {|sum, n| sum + n }   # inject details here: http://www.ruby-doc.org/core-1.9.3/Enumerable.html#method-i-inject
	end
end


puts Multiples.calculation(1000)