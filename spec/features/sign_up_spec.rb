require_relative '../../app/models/user'

RSpec.feature 'Sign up' do
  let(:email) {'email@email.com'}
  let(:password) { 'abcd1234' }

  scenario "User can sign in and create password" do
    sign_up
    expect(page).to have_content "Welcome email@email.com"
  end

  scenario "User can't register when password mismatch" do
    expect{sign_up(password_confirm: "wrong")}.not_to change(User, :count)
  end


  def sign_up(email:'email@email.com',
            password: 'abcd1234',
            password_confirm: 'abcd1234')
    visit '/'
    fill_in 'email', with: email
    fill_in 'password', with: password
    fill_in 'password_confirm', with: password_confirm
    click_button 'Register'
  end
end
