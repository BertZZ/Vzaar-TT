require 'rails_helper'

RSpec.feature "Visit Homepage" do
  scenario 'Can visit the homepage' do
    visit '/'
    expect(page).to have_content("Welcome to the Vzarr Tech Test App")
  end
end
