class Fibber

	attr_reader :fib_sequence

	def initialize(quantity)
		@quantity = quantity - 2
		@fib_sequence = [0, 1]
	end

	def fibb_it
		until @quantity == 0
			next_num = @fib_sequence[-1] + @fib_sequence[-2]
			@fib_sequence << next_num
			@quantity -= 1
		end
	end

	def jagged_output
		@fib_sequence.each_slice(5) do |nums|
			puts nums.join(" ")
		end
	end

	def better_output
		padded_fib_sequence = @fib_sequence.map { |num| num.to_s.ljust(4) }
		padded_fib_sequence.each_slice(5) do |nums|
			puts nums.join(" ")
		end
	end

	def fancy_output
		padding = @fib_sequence.last.to_s.size + 1
		fancy_padded_fib_sequence = @fib_sequence.map { |num| num.to_s.ljust(padding) }
		fancy_padded_fib_sequence.each_slice(5) do |nums|
			puts nums.join(" ")
		end
	end

end

puts "Challenge 1: Jagged Output"
challenge_1 = Fibber.new(15)
challenge_1.fibb_it
challenge_1.jagged_output

puts "\n"
puts "Challenge 2: Better Output"
challenge_2 = Fibber.new(15)
challenge_2.fibb_it
challenge_2.better_output

puts "\n"
puts "Challenge 3: Fancy Output"
challenge_3 = Fibber.new(25)
challenge_3.fibb_it
challenge_3.fancy_output
