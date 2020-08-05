require 'listen'
=begin
___           _                   _   _
|_ _|_ __  ___| |_ _ __ _   _  ___| |_(_) ___  _ __  ___
| || '_ \/ __| __| '__| | | |/ __| __| |/ _ \| '_ \/ __|
| || | | \__ \ |_| |  | |_| | (__| |_| | (_) | | | \__ \
|___|_| |_|___/\__|_|   \__,_|\___|\__|_|\___/|_| |_|___/

RUNNING THE .RB
run bundle install to download all gems (listener, rspec)

cd into the lib folder and ruby the codechallenge.rb file. I couldn't get the listener to properly interact with sleep, so it pulls from the corpus text file that is in the same directory

RUNNING THE TEST
cd out of lib and run  bundle exec rspec spec to verify the test code in rspec is being cleaned of punctuation and converted to an array.

=end


# import the corpus file that is located in the lib folder, clean it of all punctuation and carriage spaces, then convert it to an array.
file_data = File.read("./lib/corpus.txt").gsub(/[^A-Za-z0-9\s]/i, '').delete!("\r\n\\").split(/ /)


class String
  # Method that strips out punctuation, and converts the sentence into an array.
  def strip
     self.gsub(/[^A-Za-z0-9\s]/i, '').tr("\n","").split(/ /)
  end
end

class Array
# instead of using self in each method, convert self to a easily recognizable variable for cleaner code

  # method that creates a sentence with 10 words.
  def sentence
    sentencearray = []
    wordarray = self
    10.times do
      # ensure no duplicate words by deleting the word thats chosen and rejecting the deleted values in the object
      sentencearray << wordarray.reject(&:empty?).delete(wordarray.sample)
    end
    # Making it into a sentence by capitalizing the first letter and adding a space at the end with the -1 parameter
     sentencearray.join(" ").capitalize().insert(-1, '.')
  end

  # method that creates the paragraph
  def paragraph
    paragraph = []

# populates the paragraph array with a sentence that is generated when the sentence method is called
    10.times {paragraph << self.sentence}

# join the paragraph array together into a string, then display it as a proper paragraph
 paragraph.join(" ")
  end

end

# Single call to convert the imported text from the text file into a paragraph.
puts file_data.paragraph


# Test code to verify everything works
 # "Introduction After considering the historic page and viewing the living. World with anxious solicitude the most melancholy emotions of sorrowful. Indignation have depressed my spirits and I have sighed when. Obliged to confess that either nature has made a great. Difference between man and man or that the civilization which. Has hitherto taken place in the world has been very. Partial I have turned over various books written on the. Subject of education and patiently observed the conduct of parents. And the management of schools but what has been the. Result a profound conviction that the neglected education of my.".strip.paragraph


=begin
 ____
|  _ \ _ __ ___   ___ ___  ___ ___
| |_) | '__/ _ \ / __/ _ \/ __/ __|
|  __/| | | (_) | (_|  __/\__ \__ \
|_|   |_|  \___/ \___\___||___/___/

I assumed that in this test you would want a clean paragraph with no duplicate words.


1. Take the string/file and clean it of any punctuation, then convert it over to an array.
2. Take the array and make it into a random 10 word sentence with proper punctuation.
3. Create a paragraph method that calls the sentence method 10 times to create a paragraph.
4. Clean up the sentence method to make it not duplicate or print out the already removed duplicate values.
5. Join the paragraph array together into a string and puts it to the command terminal

Cannot get the listener to work, but my steps for trying to get it to work were to

1. Have a listener that detects when someone puts a file in the lib folder, then update the file data variable.
2. Run the updated file data through my method to create a new paragraph.
3. output the paragraph to the command line, then delete the file.
=end
