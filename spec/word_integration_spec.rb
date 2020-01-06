require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('user_input', :with => 'cattywampus')
    click_on('Add!')
    save_and_open_page
    expect(page).to have_content('cattywampus')
  end
end

describe('create a definition path', {:type => :feature}) do
  it('creates a definition and then goes to the definition page') do
    word = Word.new("cattywampus", nil)
    word.save
    visit("/words/#{word.id}")
    # save_and_open_page
    fill_in('user_definition', :with => "not lined up evenly on each side")
    click_on('Add definition')
    expect(page).to have_content("not lined up evenly on each side")
  end
end
