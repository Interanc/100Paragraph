require 'listen'





# listener = Listen.to('/Users/jamalmaudibmcdowell/Documents/testcode/codechallenge') do |modified, added, removed|
#   puts "modified absolute path: #{modified}"
#   puts "added absolute path: #{added}"
#   puts "removed absolute path: #{removed}"
# end
# listener.only /_spec\.txt$/
# listener.start
# sleep

class String

  # Method that strips out punctuation, and converts the sentence into an array.
  def strip
     self.gsub(/[^A-Za-z0-9\s]/i, '').split(/ /)

  end

end

class Array
# instead of using self in each method, I convert self to a easily recognizable variable for clean code

  # method that creates a sentence with 10 words.
  def sentence
    sentencearray = []
    wordarray = self
    10.times do |i|
      sentencearray << wordarray.reject(&:empty?).delete(wordarray.sample)
    end
     sentencearray.shuffle.join(" ").capitalize().insert(-1, '.')
  end

  # method that creates the paragraph
  def paragraph
    paragraph = []

    10.times {paragraph << self.sentence}

puts paragraph.join(" ")
  end

end

 # "Introduction After considering the historic page and viewing the living. World with anxious solicitude the most melancholy emotions of sorrowful. Indignation have depressed my spirits and I have sighed when. Obliged to confess that either nature has made a great. Difference between man and man or that the civilization which. Has hitherto taken place in the world has been very. Partial I have turned over various books written on the. Subject of education and patiently observed the conduct of parents. And the management of schools but what has been the. Result a profound conviction that the neglected education of my.".strip.paragraph


=begin
 ____
|  _ \ _ __ ___   ___ ___  ___ ___
| |_) | '__/ _ \ / __/ _ \/ __/ __|
|  __/| | | (_) | (_|  __/\__ \__ \
|_|   |_|  \___/ \___\___||___/___/

I assumed that in this test you would want a clean paragraph with no duplicate words



1. Take the string and clean it of any punctuation, then convert it over to an array.
2. Take the array and make it into a random 10 word sentence with proper punctuation.
3. Create a paragraph method that calls the sentence method 10 times to create a paragraph.
4. Clean up the sentence method to make it not duplicate or print out the already removed duplicate values.
5. Join the paragraph array together into a string

How do I add a inline ruby gem to listen for a file, and then when one matches the .txt parameter run my methods to convert it into a different txt?

1. generate a new gemfile with bundle init
2. installed the new gem using gem install listener
3. required it in the actual file



=end
