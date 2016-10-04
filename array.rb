#!/usr/bin/env ruby

require 'erb'

our_class = ["Keith", "Jon", "Luis", "Chris", "Mike", "Brent", "Zachary"]


short_names = []

our_class.each do |name|
  short_names << name if name.length < 5
end




sentence = "Ruby is actually kind of fun once you get used to it."

sentence_array = sentence.split(" ")
four_letter_words = sentence_array.select {|word| word.length == 4}



movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

low_budget = []
leo = []

low_budget = movies.select {|movie| movie[:budget] < 100}.collect {|movie| movie[:title]}
# george_shows = tv_shows.select{|show| show[:characters].include? "George"}.collect{|show| show[:title]}

leo = movies.select{|movie| movie[:stars].include? "Leonardo DiCaprio"}.collect {|movie| movie[:title]}



  new_file = File.open("./index.html", "w+")
  new_file << ERB.new(File.read("index.html.erb")).result(binding)
  new_file.close
