require './app/models/link'

feature "Homepage" do
  scenario "Viewing all the links on the home page" do

    Link.create(name: "Google", url: "http://google.co.uk")
    visit('/links')
    expect(page).to have_content("Google")

  end
end
