def project_attributes(override = {})
  {
    name:"Project 1",
    description:"Some description",
    target:100.00,
    release:"2021-05-10",
    website:"http://webpage.com/projects/1"
  }.merge(override)
end