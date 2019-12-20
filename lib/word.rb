class Word
  attr_accessor :id, :word

  @@words = {}
  @@total_rows = 0

  def initialize(id, word)
    @id = id || @@total_rows += 1
    @name = name
  end
end
