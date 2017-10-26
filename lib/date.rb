# require "date"

# class Start_Your_Day:: Today

# 	def initialize # do i need to initialize? what does a new Today need? Can this
# 		#just stay in th CLI? 
# def get_todays_date # move to object
#     time = Time.new
#     @full_date = time.strftime(" %A %B %d %Y ")
#     @day_in_year = time.strftime("%j")
#     puts "#{@full_date}"
#     puts "It's day ** #{@day_in_year} ** of the year."
#   end


#   def self.todays_date
#     # d = DateTime.now
#     # d.strftime(" %A %B %d %Y ")
#     DateTime.new.strftime(" %A %B %d %Y ")
#   end

#   def self.day_in_year
#   	DateTime.new.strftime(" %j ")
#   end

# end 

#require “date"
#separate the two methods -- date and day in year 
# in cli.rb, call as Date.todays_date and Date.day_in_year
# should be date = Time.new, then: date = strftime()