# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_PASSWORD = 'password'

admins = %w(utku kerem)
teachers = %w(tayfun onurozgur)
users = %w(gokhan ahmet yusuf)

surnames = %w(Doe Smith Green Brown Donald McFly Jobs McManniman)

admins.each do |admin| 
	a = Admin.new
	a.email = "#{admin}@yakut.com"
	a.password = DEFAULT_PASSWORD
	a.save!
end

teachers.each do |teacher|
	t = Teacher.new
	t.email = "#{teacher}@yakut.com"
	t.password = DEFAULT_PASSWORD
	t.save!
end

users.each do |user|
	u = User.new
	u.email = "#{user}@yakut.com"
	u.password = DEFAULT_PASSWORD
	u.github = user
	u.blog = "#{user}." + ["blogspot.com", "wordpress.com"].sample

	u.name = user.humanize
	u.surname = surnames.sample

	u.gender = "male"
	u.birthday = Date.today - (rand 12*365..60*365) 

	u.save!
end