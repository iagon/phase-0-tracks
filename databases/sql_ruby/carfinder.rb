
# A list of 10 randomly generated cars is given to the user
# The user is asked to type the product number of the car they want
# User is given contact info for person selling

# require gems
  require 'sqlite3'
  require 'faker'

# create the database for the cars
db = SQLite3::Database.new ("cars_for_sale.db")


# create the table and setting up columns
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS car_info (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    color VARCHAR(255),
    price INT,
    email VARCHAR(255),
    miles_away INT
    )
  SQL

# actually create the table 
db.execute(create_table_cmd)
