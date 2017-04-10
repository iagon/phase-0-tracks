
# A list of 10 randomly generated cars is given to the user
# The user is asked to type the product number of the car they want
# Final output user is given contact information for seller

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

db.execute(create_table_cmd)

# generate the car info
def create_car_info (db, name, color, price, email, miles_away)
  db.execute("INSERT INTO car_info(name, color, price, email, miles_away) VALUES (?, ?, ?, ?, ?)", [name, color, price, email, miles_away])
end 


# create cars in database
10.times do 
  create_car_info(db, Faker::Name.name, Faker::Color.color_name.upcase, Faker::Number.number(3), Faker::Internet.email, Faker::Number.between(1, 25) )
end

# setting the cars table as a hash and returning the cars ID and NAME 
db.results_as_hash = true
car_info = db.execute("SELECT * FROM car_info")





