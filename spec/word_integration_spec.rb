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
