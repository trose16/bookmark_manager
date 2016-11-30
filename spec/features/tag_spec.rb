require 'spec_helper'

feature "tag links" do
  scenario "I can tag my url" do
    visit("/links/new")
    fill_in :name, with: "Github"
    fill_in :url, with: "http://github.com"
    fill_in :tags, with: "tech"
    click_button 'Add Link'

    link = Link.first
      expect(link.tags.map(&:name)).to include("tech")
  end
end
