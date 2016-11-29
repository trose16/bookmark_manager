feature "Homepage" do
  scenario "Viewing all the links on the home page" do

    Link.create("http://http://www.makersacademy.com/")
    visit('/')
    expect(page).to have_content("Code")

  end
end
