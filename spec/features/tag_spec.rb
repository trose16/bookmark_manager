require 'spec_helper'

feature "tag links" do
  scenario "I can tag my url" do
    visit("/links/new")
    fill_in :name, with: "Github"
    fill_in :url, with: "http://github.com"
    fill_in :tag, with: "tech"
    click_button 'Add Link'

    expect(current_path).to eq'/links'

    within 'ul#links' do
      expect(page).to have_content("Github tech")
    end
  end
end
