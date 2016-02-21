# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create(id: 1, first_name: "Bot", last_name: "Example", phone: "1111111111", email: "bot@example.com", zip_code: "12345", birthday: "1995/05/15")
Customer.create(id: 2, first_name: "Botty", last_name: "Example", phone: "2222222222", email: "botty@example.com", zip_code: "23456", birthday: "1995/06/16")
Point.create(point_total: 50, customer_id: 1)
Point.create(point_total: 50, customer_id: 1)
Point.create(point_total: 50, customer_id: 2)