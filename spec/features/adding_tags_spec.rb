


RSpec.feature "Adding a tag to the bookmark manager" do
  scenario "Adding a tab and viewing the tag in the list of bookmarks" do

    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    fill_in "tags", with: "Beauty"
    click_button("Submit")
    expect(page).to have_content("Tags: Beauty")

  end
end
