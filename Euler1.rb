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

puts "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below ......"

puts "Insert Number Below:"
number = gets.chomp.to_i	#user imput converted to integer
puts "The sum is: #{Multiples.calculation(number)}"