require 'rails_helper'

feature 'Visiting Root' do

  it 'displays a sign in form' do
    visit root_path
    find_field('username')
    find_field('password')
  end

  it 'contains the text "Welcome"' do
    visit root_path
    expect(page).to have_content('Welcome')
  end

  it 'and clicking Register goes to registration path' do
    visit root_path
    find_link("Register")
  end

  it 'and clicking Register goes to registration path' do
    visit root_path
    find_link("Register").click
    expect(current_path).to eq(new_user_path)
  end
end
