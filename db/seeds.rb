# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

emails = []
firstName = []
lastName = []
email.each_with_index do |email, index|
	User.crete(email: email, firstName: firstName[index], lastName: lastName[:index])
end