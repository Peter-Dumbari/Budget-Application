# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# # db/seeds.rb

# # Seed data for categories table
# # Category.create(name: 'Category 1', icon: 'icon1', user_id: 6)
# # Category.create(name: 'Category 2', icon: 'icon2', user_id: 6)

# # # Seed data for icons table
# # Seed data for transaction_records table
# TransactionRecord.create(amount: 100.0, description: 'Transaction 1', category: 'Category_1', user_id: 6, category_id: 15)
# TransactionRecord.create(amount: 150.0, description: 'Transaction 2', category: 'Category_2', user_id: 6, category_id: 15)

# # Add more seed data as needed


# user = User.create(name: "Sample User")

# Create transaction records for the user
# transaction_records = [
#   { amount: 100.50, description: "Expense 1", category_id: 22, user_id: 8 },
#   { amount: 75.25, description: "Expense 2", category_id: 22, user_id: 8 },
#   { amount: 50.0, description: "Expense 3", category_id: 21, user_id: 8 },
#   # Add more transaction records as needed
# ]

# TransactionRecord.create!(transaction_records)


# require 'faker'

# 100.times do
#   User.create(
#     name: Faker::Name.name,
#     icon: Faker::Internet.icon,
#   )
# end
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# # db/seeds.rb

# # Seed data for categories table
# # Category.create(name: 'Category 1', icon: 'icon1', user_id: 6)
# # Category.create(name: 'Category 2', icon: 'icon2', user_id: 6)

# # # Seed data for icons table
Icon.create(name: 'House', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827356/icons/icons8-house-48_hxwkvp.png')
Icon.create(name: 'Transport', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827357/icons/icons8-car-94_qyniid.png')
Icon.create(name: 'Food', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827356/icons/icons8-kawaii-noodle-96_kboifr.png')
Icon.create(name: 'Book', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827355/icons/icons8-books-96_mk7xdk.png')
Icon.create(name: 'Transaction', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827355/icons/icons8-transaction-48_sl1vif.png')
Icon.create(name: 'Cloth', icon_url: 'https://res.cloudinary.com/tamstech-computer-repair-center/image/upload/v1695827355/icons/icons8-cloth-100_yinnvr.png')

# # Seed data for transaction_records table
# TransactionRecord.create(amount: 100.0, description: 'Transaction 1', category: 'Category_1', user_id: 6, category_id: 15)
# TransactionRecord.create(amount: 150.0, description: 'Transaction 2', category: 'Category_2', user_id: 6, category_id: 15)

# # Add more seed data as needed


# user = User.create(name: "Sample User")

# Create transaction records for the user
# transaction_records = [
#   { amount: 100.50, description: "Expense 1", category_id: 22, user_id: 8 },
#   { amount: 75.25, description: "Expense 2", category_id: 22, user_id: 8 },
#   { amount: 50.0, description: "Expense 3", category_id: 21, user_id: 8 },
#   # Add more transaction records as needed
# ]

# TransactionRecord.create!(transaction_records)


# require 'faker'

# 100.times do
#   User.create(
#     name: Faker::Name.name,
#     icon: Faker::Internet.icon,
#   )
# end
