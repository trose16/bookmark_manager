
RSpec.feature 'Sign up' do

  scenario "User can sign in and create password" do
    visit '/'
    fill_in 'email', with: 'email@email.com'
    fill_in 'password', with: 'abcd1234'
    click_button 'Register'
    expect(page).to have_content "Welcome email@email.com"
  end

end
