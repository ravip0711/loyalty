# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Customer.create(id: 1, first_name: "Rav", last_name: "Pat", phone: "1234", email: "rav@pat.com", zip_code: "12345", birthday: "10/5/95")
Customer.create(id: 2, first_name: "Shi", last_name: "Pat", phone: "12345", email: "shi@pat.com", zip_code: "12345", birthday: "10/5/95")
Point.create(point_total: 50, customer_id: 1)
Point.create(point_total: 50, customer_id: 1)
Point.create(point_total: 50, customer_id: 2)