class Word
  attr_accessor :id, :word_input

  @@words = {}
  @@total_rows = 0

  def initialize(id, word_input)
    @id = id || @@total_rows += 1
    @word_input = word_input
  end
end

#   def save
#     @@words[self.id] = Word.new(self.id, self.word_input)
#   end
# end
