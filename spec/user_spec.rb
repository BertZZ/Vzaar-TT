require 'rails_helper'

RSpec.describe User, type: :model do
  it "Creates a valid user with required attributes" do
    user = User.new
    user.username = "BertZ"
    user.password = "Password1"
    user.email = "Test@test.co.uk"
    user.save
    expect(user).to be_valid
  end

  it "Doesn't create a valid User when Username is missing" do
    user = User.new
    user.password = "Password1"
    user.email = "Test@test.co.uk"
    user.save
    expect(user).not_to be_valid
  end

  it "Doesn't create a valid User when Password is missing" do
    user = User.new
    user.username = "BertZ"
    user.email = "Test@test.co.uk"
    user.save
    expect(user).not_to be_valid
  end

  it "Doesn't create a valid User when Email is missing" do
    user = User.new
    user.username = "BertZ"
    user.password = "Password1"
    user.save
    expect(user).not_to be_valid
  end
end
