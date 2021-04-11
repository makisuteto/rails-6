# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
require "faker"
Faker::Config.locale = :ja

# 1000件の初期データを投入
1000.times do
  User.create!(name: Faker::Name.name, age: rand(0..100))
end

puts "初期データの投入に成功しました！"