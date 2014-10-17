class Prime
	def self.is_prime(current_nr)
		prime = true
		test_array = (2 ... current_nr)
		test_array.each do |i|
			if current_nr % i == 0
				prime = false			
			end
		end
		return prime
	end

	def self.calculation(target)
		@x = 1
		loop do
			@x += 1
			break if @x > target
			if target % @x == 0
				target = target / @x
				if Prime.is_prime(@x) == true
					@largest_prime = @x
				end
			end
		end
		return @largest_prime
	end
end

puts "The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number _____________ ?"

puts "Insert Number Below:"
number = gets.chomp.to_i	#user imput converted to integer
puts "The largest prime factor is: #{Prime.calculation(number)}"
