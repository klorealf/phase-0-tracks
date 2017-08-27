require 'sqlite3'
#require 'faker'

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
	CREATE TABLE IF NOT EXISTS services (
 		id INTEGER PRIMARY KEY,
 		service_available VARCHAR (255),
 		cost INT
	)

SQL
@db.execute(create_customers_table)
@db.execute(create_services_table)

def user_interface
	closing = "Enjoy your day!"
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
					if facial_type == 1
						add_customers
					elsif facial_type == 2
						add_customers
					elsif facial_type == 3
						add_customers
					elsif facial_type == 4
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
					puts "We have lots of polish options!"
					add_customers
					add_services
					puts closing
				elsif nail_type == "2"
					puts ""
					puts "We have lots of gel options!"
					add_customers
					add_services
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

def list_of_customers
	customers = @db.execute("SELECT * FROM customers;")
	puts "--- List of Customers ---"
	for i in 0...(customers.length) do
		puts "Name: #{customers[i]["customer_name"]} Age: #{customers[i]["customer_age"]} Service wanted: #{customers[i]["service_wanted"]}"
	end
end

def list_of_services
	stuff_available = @db.execute("SELECT * FROM services;")
	puts "--- Services available---"
	for i in 0...(stuff_available.length) do
		puts "Service: #{stuff_available[i]["service_available"]} Cost: $#{stuff_available[i]["cost"]}"
	end
end

user_interface

 customers = @db.execute("SELECT * FROM customers")