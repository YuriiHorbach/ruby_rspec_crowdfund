require 'rails_helper'

describe "Viewing the list of projects" do

  it "shows the project names"  do
    
    visit projects_url

    expect(page).to have_text"4 Projects"
    expect(page).to have_text"Project 1"
    expect(page).to have_text"Project 2"
    expect(page).to have_text"Project 3"
    expect(page).to have_text"Project 4"

  end
    
end