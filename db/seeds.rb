# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p1=Pacient.create(name:"Maria",last_name:"Marin",telephone:"594888484",mail:"mdmarin1@miuandes.cl",address:"Maira",inf:" ")
p2=Pacient.create(name:"Andres",last_name:"Macaya",telephone:"59483484",mail:"amacaya@miuandes.cl",address:"Las condes",inf:" ")


# Example: Create a few doctors
d1 = Doctor.create(name: 'Dr. John Doe', gender: true)
d2 = Doctor.create(name: 'Dr. Jane Smith', gender: false)

i1 = Institution.create(name: 'Clinica Alemana')

c1 = MedicalCenter.create(name: 'Clinica Alemana Vitacura', location: 'Vitacura', institution: i1)

Appointment.create(date: DateTime.new(2023, 10, 15, 13, 0), doctor: d1, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 14, 13, 0), doctor: d1, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 16, 13, 0), doctor: d1, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 17, 13, 0), doctor: d1, medic_center: 'Clinica Alemana')

Appointment.create(date: DateTime.new(2023, 10, 9, 12, 0), doctor: d2, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 13, 0), doctor: d2, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 16, 0), doctor: d2, medic_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 17, 0), doctor: d2, medic_center: 'Clinica Alemana')

