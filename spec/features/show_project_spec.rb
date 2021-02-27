require "rails_helper"

describe "Viewing project info" do

  it "show's project details" do
    project = Project.create(project_attributes(target: 100000.00))

    visit project_url(project)

    expect(page).to have_text(project.name)
    expect(page).to have_text(project.description)
    expect(page).to have_text("$100,000.00")
    expect(page).to have_text(project.release)
    expect(page).to have_text(project.website)
  end

  it "shows the number of days remaining if the pledging end date is in the future" do
    allow(Time).to receive(:now).and_return(Time.parse("00:00:00"))

    project = Project.create(project_attributes(release: 1.day.from_now))
  
    visit project_url(project)
  
    expect(page).to have_text("1 day remaining")
  end
  
  it "shows 'All Done!' if the pledging end date is in the past" do
    project = Project.create(project_attributes(release: 2.days.ago))

    visit project_url(project)

    expect(page).to have_text("All Done!")
  end
  
end
