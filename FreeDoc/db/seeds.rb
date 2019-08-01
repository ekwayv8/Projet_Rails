# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Boucles permettant de créer de faux objets afin de tester notre programme 
require 'faker'
100.times do

	city_list = City.create!(name: Faker::Address.city)
	patient_list = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city:city_list)
	doctor_list = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name ,specialty: Faker::Name.first_name, zip_code: Faker::Address.zip_code, city:city_list)
	appointment_list = Appointment.create!(date: Faker::Date.forward, doctor: doctor_list, patient: patient_list, city:city_list)
	

end