class Phrase
  VERSION = 1
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def word_count
    input_arr = input.chars
    phrase = input.downcase
    phrase_modified = phrase.scan(/[-'\w]+/)
    results = Hash.new
    phrase_modified.each do |word|
      word_modified = word[1..-2]
      if results.has_key?(word)
        puts "in the if"
        results[word] = results[word] + 1
      elsif results.has_key?(word_modified)
        puts "got into the elsif"
        results[word_modified] = results[word_modified] + 1
      else
        puts "in the else"
        results[word] = 1
      end
    end
    results
  end

end






  # def word_count
  #   phrase = input.downcase.tr("'","")
  #   phrase_no_aposts = phrase.scan(/\w+/)
  #   results = Hash.new
  #   phrase_no_aposts.each do |word|
  #     if results.has_key?(word)
  #       results[word] = results[word] + 1
  #     else
  #       results[word] = 1
  #     end
  #   end
  #   results
  # end