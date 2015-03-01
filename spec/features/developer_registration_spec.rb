require 'rails_helper'

RSpec.feature "Developer registration", js: true do
  scenario "with valid inputs" do
    # visit page
    # fill out the fields
    # submit form
    # verify that we get the expected result
    visit new_developer_path
    fill_in "Name", with: "Prosper"
    fill_in "Email", with: "prosperotemuyiwa@gmail.com"
    # fill_in ":url", with: "http://prosperotemuyiwa.com"
    # fill_in ":work_place", with: "Andela"
    # fill_in ":code_name", with: "unicodeveloper"
    # #fill_in "tags", with: "Software, Developer"
    # fill_in ":bio", with: "Prosper is a very big man in Nigeria"

  end
end