require_relative '../app/models/user.rb'

describe User do

  it 'upon creation of new user increases user count by one' do
    expect{User.new({})}.to change{User.user_count}.by 1
  end

end
