# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
Customer.create(first_name: "Rav", last_name: "Pat", phone: "1234", email: "rav@pat.com", zip_code: "12345", birthday: "10/5/95")
Point.create(id: 1, point_total: 75, admin_id: 1, customer_id: 1)