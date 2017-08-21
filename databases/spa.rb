require 'sqlite3'
require 'faker'

#create SQLite3 database

@db = SQLite3::Database.new("spa.db")
@db.results_as_hash = true

create_customers_table = <<-SQL
	CREATE TABLE IF NOT EXISTS customers (
		id INTEGER PRIMARY KEY,
		customer_name VARCHAR (255),
		customer_age INT,
		service_wanted VARCHAR (255)
	)

SQL

create_services_table = <<-SQL
	CREATE TABLE IF NOT EXISTS servies (
 		id INTEGER PRIMARY KEY,
 		service_available VARCHAR (255),
 		cost INT
	)

@db.execute(create_customers_table)
@db.execute(create_services_table)

def user_interface
	closing = "Enjoy your stay!"
	puts "Welcome to the Spa!"
	puts "What type of service will you be needing?"
	puts "Type 1 for facial" 
	puts "Type 2 for nails"
	puts "Type 3 to massage"
	service_wanted = gets.chomp

		if service_wanted == 1 
			loop do
			puts ""
			puts "What kind of facial would you like?"
			puts ""
				puts "Type 1 for a facial peel"
				puts "Type 2 for a facial steam"
				puts "Type 3 for a facial mask"
				puts "Type 4 to Quit"	
				facial_type = gets.chomp
					if facial_type == "1"
						service1
					elsif facial_type == "2"
						service2
					elsif facial_type == "3"
						service3
					elsif facial_type == "4"
						puts closing
						break
					end
			end
		elsif service_wanted  == "2"
		
		
			puts "Would you like polish or gel?"
			puts "Type 1 for polish"
			puts "Type 2 for gel"
			nail_type = gets.chomp
				if nail_type == "1"
					puts ""
					puts "These are the color polishes we have:"
					service1
					service2
					puts closing
				else
					puts closing
				end
		else
			puts closing
			
		end

	end

def add_customers
	puts "Please enter your full name:"
	name = gets.chomp
	puts "Please enter your age:"
	age = gets.chomp
	puts "Please enter the service you are interested in:"
	service = gets.chomp


	@db.execute("INSERT INTO customers (customer_name, customer_age, service_wanted) VALUES (?, ?, ?)" , [name, age, service])
end

def add_services
	puts "Please enter the service you are interested in:"
	service = gets.chomp
	puts "How much are you looking to spend?"
	cost = gets.chomp

	@db.execute("INSERT INTO services (service_available, cost) VALUES (?, ?, ?)" , [service, cost])
end