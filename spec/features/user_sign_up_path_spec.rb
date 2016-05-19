require 'rails_helper'

feature "Registering" do
  it "displays a registration form" do
    visit new_user_path
    find_field("Username")
    find_field("Password")
    find_field("Password confirmation")
  end
  
end
