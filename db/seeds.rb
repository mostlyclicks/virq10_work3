# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Categories extension
Refinery::Categories::Engine.load_seed

p = Refinery::Categories::Category.create ([
  {name: 'Advertising & Media', description: 'Seed data'},
  {name: 'Arts, Culture & Entertainment', description: 'Seed data'},
  {name: 'Agriculture, Fishing & Forestry', description: 'Seed data'},
  {name: 'Business & Professional Services', description: 'Seed data'},
  {name: 'Sports & Recreation', description: 'Seed data'},
  {name: 'Automotive, Aviation & Marine', description: 'Seed data'},
  {name: 'Family, Community & Non-Profit', description: 'Seed data'},
  {name: 'Computers & Telecommunication', description: 'Seed data'},
  {name: 'Government & Education', description: 'Seed data'},
  {name: 'Healthcare & Wellness', description: 'Seed data'},
  {name: 'Home & Garden', description: 'Seed data'},
  {name: 'Finance & Insurance', description: 'Seed data'},
  {name: 'Lodging, Travel & Tourism', description: 'Seed data'},
  {name: 'Personal Services & Care', description: 'Seed data'},
  {name: 'Restaurants, Food & Beverages', description: 'Seed data'},
  {name: 'Public Utilities & Environment', description: 'Seed data'},
  {name: 'Real Estate, Rentals & Construction', description: 'Seed data'},
  {name: 'Shopping & Specialty Retail', description: 'Seed data'},
  {name: 'Manufacturing, Production & Wholesale', description: 'Seed data'},
  {name: 'Industrial Supplies & Services', description: 'Seed data'},
  {name: 'Religious Organizations', description: 'Seed data'},
  {name: 'Moving & Storage', description: 'Seed data'},
  {name: 'Pets & Veterinary', description: 'Seed data'},
  {name: 'Legal', description: 'Seed data'},
  {name: 'Miscellaneous'}
])
