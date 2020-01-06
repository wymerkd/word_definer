require 'rspec'
require 'word'
require 'definition'

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new(nil, "cattywampus")
      word2 = Word.new(nil, "cattywampus")
      expect(word).to(eq(word2))
    end
  end

  describe('#save') do
    it("saves a word") do
      word = Word.new(nil, "bumfuzzle")
      word.save()
      word2 = Word.new(nil, "cattywampus")
      word2.save()
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears all words") do
      word = Word.new(nil, "bumfuzzle")
      word.save()
      word2 = Word.new(nil, "cattywampus")
      word2.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('#delete') do
    it("deletes a word by id") do
      word = Word.new(nil, "bumfuzzle")
      word.save()
      word2 = Word.new(nil, "cattywampus")
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new(nil, "bumfuzzle")
      word.save()
      word.update("bumfizzlefazzle")
      expect(word.word_input).to(eq("bumfizzlefazzle"))
    end
  end

  describe('.find') do
    it("finds a word by id") do
      word = Word.new(nil, "bumfuzzle")
      word.save()
      word2 = Word.new(nil, "cattywampus")
      word2.save()
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('.all') do
    it("sorts word bank alphabetically by word") do
      word = Word.new(nil, "bumfuzzle")
        word.save()
        word2 = Word.new(nil, "snickersnee")
        word2.save()
        word3 = Word.new(nil, "cattywampus")
        word3.save()
      expect(Word.all).to(eq([word, word3, word2]))
    end
  end
end
