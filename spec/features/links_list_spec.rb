require './app/app'
require 'capybara'
require './app/models/link.rb'
#require 'database_cleaner'

# DatabaseCleaner.strategy = :truncation

feature "Viewing a list of links" do
  scenario "Displays a list of links on the homepage" do
    Link.create(url: 'www.google.com', title: 'Google')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
    expect(page).to have_content("Google")

  end
    # DatabaseCleaner.clean
  end
end
