# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach(Rails.root.join('lib/seeds/emails.csv')) do |row|
    User.create({
        email: row[0],
        password: row[1],
        first_name: row[2],
        last_name: row[3]
    })
end

CSV.foreach(Rails.root.join('lib/seeds/companies.csv')) do |row|
    Company.create({
        name: row[0],
        qr_code: row[1]
    })
end
