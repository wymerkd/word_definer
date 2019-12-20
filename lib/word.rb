class Word
  attr_accessor :id, :word_input

  @@words = {}
  @@total_rows = 0

  def initialize(id, word_input)
    @id = id || @@total_rows += 1
    @word_input = word_input
  end

  def save
    @@words[self.id] = Word.new(self.id, self.word_input)
  end

  def ==(word_to_compare) #comparing if two words are the same
    self.word_input() == word_to_compare.word_input()
  end

  def self.all #stores values of all words
    @@words.values()
  end

  def self.clear
    @@total_rows = 0
    @@words = {}
  end

  # def delete
  #   @@words.delete(self.id)
  # end
end
