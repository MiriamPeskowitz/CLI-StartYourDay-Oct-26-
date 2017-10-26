
# #is this necessary? The scrape result can go directly into the cli.rb. Yes: Because Objects 
# #separation of concerns: make each type its own object. 


class StartYourDay::Meditation 
	attr_reader :text

	def initialize(text)
		@text = text
	end

end


#   #lines 8-27: thinking through whether to push scraped data into an array or hash here, or push it straight into cli.rb. Went with the 2d idea. 
  


#   #formatting -- dig deep enough into nokogiri to get the most precise text or use .chomp . .split and make it into an array, then iterate over the array. 
