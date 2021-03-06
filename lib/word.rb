class Word
  attr_accessor :id, :word_input

  @@words = {}
  @@total_rows = 0

  def initialize(id, word_input)
    @id = id || @@total_rows += 1
    @word_input = word_input
  end

  def update(word_input)
    @word_input = word_input
  end

  def save
    @@words[self.id] = Word.new(self.id, self.word_input)
  end

  def ==(word_to_compare) #comparing if two words are the same
    self.word_input() == word_to_compare.word_input()
  end

  def self.all
    @@words.values()
  end

  def self.clear #clears array of words
    @@total_rows = 0
    @@words = {}
  end

  def self.find(id)
    @@words[id]
  end

  def delete #deletes a word by id
    @@words.delete(self.id)
  end

  def self.sort #stores values of all words
    @@words.values.sort {|a, b| a.word_input.downcase <=> b.word_input.downcase}
  end

  def definitions
    Definition.find_by_word(self.id)
  end
end
