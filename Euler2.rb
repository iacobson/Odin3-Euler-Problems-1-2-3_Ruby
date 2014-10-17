class Fibonacci
	def self.calculation(target)
		a = 1
		b = 2
		fibo_string=[a,b]
		loop do
			break if a > target || b > target
			a = a + b
			fibo_string << a if a < target
			b = b + a
			fibo_string << b if b < target			
		end
		fibo_string.delete_if{|i| i.odd?}.inject {|sum, n| sum + n } # inject details here: http://www.ruby-doc.org/core-1.9.3/Enumerable.html#method-i-inject
	end
end

puts Fibonacci.calculation(4000000)