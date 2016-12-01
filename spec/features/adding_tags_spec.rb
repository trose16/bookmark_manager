


RSpec.feature "Adding a tag to the bookmark manager" do
  scenario "Adding a tab and viewing the tag in the list of bookmarks" do
    add_link_with_tag
    expect(page).to have_content("Tags: Beauty")
  end
end
