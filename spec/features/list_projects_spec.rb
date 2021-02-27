require 'rails_helper'

describe "Viewing the list of projects" do

  it "shows the project names"  do

    project1 = Project.create(project_attributes)

    project2 = Project.create(project_attributes)

    project3 = Project.create(project_attributes)
    
    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text(project1.name)
    expect(page).to have_text(project2.name)
    expect(page).to have_text(project3.name)
    
    expect(page).to have_text(project1.description)
    expect(page).to have_text(project1.target)
    expect(page).to have_text(project1.release)
    expect(page).to have_text(project1.website)
  end
end