
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
  create_car_info(db, Faker::Name.name, Faker::Color.color_name.upcase, Faker::Number.number(4), Faker::Internet.email, Faker::Number.between(1, 45) )
end

# setting the cars table as a hash and returning the cars ID and NAME 
db.results_as_hash = true
car_info = db.execute("SELECT * FROM car_info")


# USER INTERFACE
puts "***** Get a car and get on the road! Press ENTER for a list of car for sale near you. *****"
continue = gets.chomp


car_info.each do |car|
  p "Car number: #{car['id']} || Color: #{car['color']} || Cost: $#{car['price']} || Located: #{car['miles_away']} miles away"
end


# ask user to choose the product number(based off of primary id) of the car they are interested in 
print "Please type the product number of the car you are interested in to get the owner's contact info!"
car_choice = gets.chomp 


# provide contact info for car choice
car_info.each do |con|
  if car_choice.to_i == con['id']
    print "#{con['color'].upcase} is a great choice! Email #{con['name']} at #{con['email']} for more details about the car!"
  end
end





