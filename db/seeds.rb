# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Seed data for categories table
# Category.create(name: 'Category 1', icon: 'icon1', user_id: 6)
# Category.create(name: 'Category 2', icon: 'icon2', user_id: 6)

# # Seed data for icons table
# Icon.create(name: 'Icon 1', url: 'icon1_url')
# Icon.create(name: 'Icon 2', url: 'icon2_url')

# Seed data for transaction_records table
TransactionRecord.create(amount: 100.0, description: 'Transaction 1', category: 'Category 1', user_id: 6, category_id: 6)
TransactionRecord.create(amount: 150.0, description: 'Transaction 2', category: 'Category 2', user_id: 6, category_id: 6)

# Add more seed data as needed
