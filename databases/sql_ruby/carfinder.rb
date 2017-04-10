
# User is given a list of 10 randomly generated cars for sale
# The user is asked to type the product number of the car they want
# User is given contact info for person selling

# require necessary gems
  require 'sqlite3'
  require 'faker'

# create the database for the cars
db = SQLite3::Database.new ("cars_for_sale.db")