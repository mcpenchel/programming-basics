require 'sqlite3'
DB = SQLite3::Database.new("02_sql_crud_doctors.db")

DB.results_as_hash = true


# p DB.execute("SELECT * FROM doctors;")

# p DB.execute("SELECT * FROM doctors WHERE id = 2";)


DB.execute("INSERT INTO doctors (first_name, last_name, specialty) VALUES ('Tomas', 'Gomes', 'MD');")
p DB.last_insert_row_id
