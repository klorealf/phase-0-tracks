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

