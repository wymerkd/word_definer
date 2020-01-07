require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('user_word', :with => 'cattywampus')
    click_on('Add!')
    expect(page).to have_content('cattywampus')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates a definition and then goes to the definition page') do
    word = Word.new("cattywampus", 1)
    word.save
    visit("/words/1")
    save_and_open_page
    fill_in('user_definition', :with => "not lined up evenly on each side")
    click_on('Add definition')
    expect(page).to have_content("not lined up evenly on each side")
  end
end
