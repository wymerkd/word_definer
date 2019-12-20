require 'rspec'
require 'word'

describe '#Word' do

  before(:each) do
    Word.clear()
  end
end

describe('#save') do
    it("saves a word") do
      word = Word.new(nil, "bumfuzzle") # nil, nil added as second argument
      album.save()
      album2 = Word.new(nil, "cattywampus" ) # nil, nil added as second argument
      word2.save()
      expect(Word.all).to(eq([album, album2]))
    end
  end
