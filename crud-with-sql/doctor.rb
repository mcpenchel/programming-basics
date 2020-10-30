require 'sqlite3'
DB = SQLite3::Database.new("02_sql_crud_doctors.db")
DB.results_as_hash = true

class Doctor

  attr_reader :id, :first_name, :last_name, :specialty

  def initialize(attributes = {})
    @id = attributes['id']
    @first_name = attributes['first_name']
    @last_name = attributes['last_name']
    @specialty = attributes['specialty']
  end

  def self.find(id)
    doctor_hash = DB.execute("SELECT * FROM doctors WHERE id = #{id}").first
    Doctor.new(doctor_hash)
  end

  def self.all
    doc_array = DB.execute("SELECT * FROM doctors;");

    doc_array.map do |doctor_hash|
      Doctor.new(doctor_hash)
    end
  end
end


tomas = Doctor.find(6)

puts tomas.first_name
puts tomas.last_name
puts tomas.specialty

Doctor.all
