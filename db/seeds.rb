# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create!([
  {
    name:"Project 1",
    description:"Some description 1",
    target:100.00,
    release:"2021-05-10",
    website:"http://webpage.com/projects/1"
  },
  {
    name:"Project 2",
    description:"Some description 2",
    target:100.00,
    release:"2021-07-11",
    website:"http://webpage.com/projects/2"
  },
  {
    name:"Project 3",
    description:"Some description 3",
    target:100.00,
    release:"2021-12-31",
    website:"http://webpage.com/projects/3"
  }
])