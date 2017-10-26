require 'pry'
# require 'date'

# do these need to go here, or is the dependency now assumed? 

class StartYourDay::CLI

  def call
    # start out by scraping all the data
    puts "Welcome to the new day..."
    # todays_date
    choose
   
  end
#get the right syntax
  # def todays_date # move to object
  #   time = Time.new
  #   @full_date = time.strftime(" %A %B %d %Y ")
  #   @day_in_year = time.strftime("%j")
  #   puts "#{@full_date}"
  #   puts "It's day ** #{@day_in_year} ** of the year."
  # end

  def choose
    #ask for input
    @input = ""

    # while @input != "X".downcase
      puts "@@@@@@@@@@\n"
      puts "Press A for all daily starters, or choose a specific number."
      puts "Meditation --> 1"
      puts "Writing Tip --> 2"
      puts "Word of the Day --> 3"
      puts "Five Ideas to Consider --> 4"
      puts "Exit --> x"
    # end
    #get input
    
    @input = gets.strip.downcase.to_s
    starter
  end 
  
  def starter
    #do something with input -- make it trigger that data from the scrape 
    # while @input !=
    case
    when @input == "a"
      puts "Begin your day with abundance.\n"
      # puts "#{Scraper.day_starters}"
      puts "@@@@@@@@@@\n"
      puts "Ease in with a meditation: "
      puts "#{Scraper.meditation}"
      puts "@@@@@@@@@@\n"
      puts "Today's writing tip:"
      puts "#{Scraper.writing_tip}\n"
      puts "@@@@@@@@@@\n"
      puts "Word of the Day is:"
      puts "#{Scraper.word_of_the_day}\n "
      puts "@@@@@@@@@@\n"
      puts "Idea tidbits and conversation starters:"
      puts " #{Scraper.ideas}\n"
      puts "@@@@@@@@@@\n"
      puts "Don't forget to follow your passions. See you tomorrow."
  
    when @input == "1"
      puts "@@@@@@@@@@\n"
      puts "Ease in with a meditation: "
      puts "#{Scraper.meditation}"
      puts choose 

    when @input == "2"
      puts "@@@@@@@@@@\n"
      puts "Today's writing tip:"
      puts "#{Scraper.writing_tip}\n"
      choose

    when @input == "3"
      puts "@@@@@@@@@@\n"
      puts "Word of the Day is:"
      puts "#{Scraper.word_of_the_day}\n "
      choose

    when @input == "4"
      puts " #{Scraper.ideas}\n"
      puts "@@@@@@@@@@\n"
      puts "Don't forget to follow your passions. See you tomorrow."
      choose

    when @input == "X".downcase
      puts "Don't forget to follow your passions. See you tomorrow."
         
          #add a default for bad input 
    else   
      puts "Please re-enter your choice."
      choose  
    end
  end
end

# earlier stage/removed 
#puts <<-DOCS
#       1. https://www.dailyzen.com/
#       2. https://www.dailywritingtips.com/
#       3. https://www.merriam-webster.com/word-of-the-day
#       4.https://www.aspeninstitute.org/ideas/
#     DOCS
