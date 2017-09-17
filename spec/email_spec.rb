require 'rails_helper'

RSpec.feature "Confirmation Email" do
  scenario 'User gets an Email' do
    visit '/'
    click_link("Sign Up")
    fill_in 'user_username', with: 'BertZ'
    fill_in 'user_password', with: 'test1'
    fill_in 'user_email', with: 'test@example.com'
    click_button('submit')
    email = ActionMailer::Base.deliveries.last
    expect(email.to).to eq ['test@example.com']
    expect(email.subject).to have_content 'Welcome!'
  end
end
