require 'sqlite3'
require 'faker'

#create SQLite3 database

@db = SQLite3::Database.new("spa.db")
@db.results_as_hash = true

