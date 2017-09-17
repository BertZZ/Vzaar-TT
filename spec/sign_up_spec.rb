require 'rails_helper'

RSpec.feature "User Can Sign Up" do
  scenario 'User Signs Up' do
    visit '/'
    click_link("Sign Up")
    fill_in 'user_username', with: 'BertZ'
    fill_in 'user_password', with: 'test1'
    fill_in 'user_email', with: 'bertie.wooles@hotmail.co.uk'
    click_button('submit')
    expect(page).to have_content('User was successfully created. Thank you for signing up')
  end
end
