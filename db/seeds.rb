# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create_table :students do |t|
#   t.string  :first_name
#   t.string  :last_name
#   t.boolean :active, default: false
#   t.timestamps null: false
  student_1 = Student.create(first_name: "Kirk",   last_name: "Archer", active:false)
  student_2 = Student.create(first_name: "Kester", last_name: "Archer", active:false)
  student_3 = Student.create(first_name:  "Kenton", last_name: "Archer", active:false)
