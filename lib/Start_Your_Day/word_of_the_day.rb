
class StartYourDay::Word_of_the_day
	attr_reader :word, :definition

	def initialize(word, definition)
		@word = word
		@definition = definition
	end
end 
