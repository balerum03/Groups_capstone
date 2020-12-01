require 'rails_helper'

RSpec.describe User, type: :model do
  User.delete_all
  let!(:test_user) { User.create(user_name: "test_user1") }
  
  it "does create user if user_name is given" do
    expect(test_user).to be_valid
  end
end
