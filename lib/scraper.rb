require 'pry'
require 'nokogiri'
require 'open-uri'

#do I need an array/@@all? 
class StartYourDay::Scraper
@@all = []

    def self.meditation
      doc1 = Nokogiri::HTML(open("https://www.dailyzen.com/"))
      daily_med = doc1.css("blockquote").text.gsub("\n", "").gsub("\t", "")
      Meditation.new(@daily_med)
      # @@all << @daily_med

    end

    def self.writing_tip
      doc2 = Nokogiri::HTML(open("https://www.dailywritingtips.com/"))
      tip = doc2.css(".post-block p").text
      Writing_tip.new(tip)
      # @@all<< @tip
    end

    def self.word_of_the_day
      doc3 = Nokogiri::HTML(open("https://www.merriam-webster.com/word-of-the-day"))
      word = doc3.css(".word-and-pronunciation h1").text # this isn't showing up. how do I make two pieces of data get to the cli? 
      definition = doc3.css(".wod-did-you-know-container").text.gsub("\n", " ").gsub("                ", " ")
      Word_of_the_day.new(word, definition)
    end

    def self.ideas
      doc4 = Nokogiri::HTML(open("https://www.aspeninstitute.org/ideas/"))
      title = doc4.css(".five-best-ideas__card__text").text.gsub(".", ".  ") # how to get the first only #change to regex with . ! ? 
      @@all<@title
      Ideas.new(title)
    end

    def self.starters
      @@all
    end

end 
