# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Must run 'rake db:seed' to create default models
Admin.new(email: 'admin@foobar.com', password: 'password').save!
Teacher.new(email: 'teacher@foobar.com', password: 'password').save!
User.new(email: 'user@foobar.com', password: 'password', name: 'user', surname: 'user', gender: :not_specified, birthday: Date.today).save!
