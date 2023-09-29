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

Appointment.create(date: DateTime.new(2023, 10, 15, 13, 0), doctor: d1, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 14, 13, 0), doctor: d1, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 16, 13, 0), doctor: d1, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 17, 13, 0), doctor: d1, medical_center: 'Clinica Alemana')

Appointment.create(date: DateTime.new(2023, 10, 9, 12, 0), doctor: d2, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 13, 0), doctor: d2, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 16, 0), doctor: d2, medical_center: 'Clinica Alemana')
Appointment.create(date: DateTime.new(2023, 10, 10, 17, 0), doctor: d2, medical_center: 'Clinica Alemana')


# seeds.rb

# Create Institutions
institution1 = Institution.create(name: 'Hospital ABC')
institution2 = Institution.create(name: 'Clinica XYZ')

# Create Medical Centers
medical_center1 = MedicalCenter.create(name: 'Medical Center 1', location: 'City A', institution: institution1)
medical_center2 = MedicalCenter.create(name: 'Medical Center 2', location: 'City B', institution: institution2)

# Create Doctors
doctor1 = Doctor.create(name: 'Dr. Smith', specialty: 'Cardiology')
doctor2 = Doctor.create(name: 'Dr. Rodriguez', specialty: 'Dermatology')

# Create Appointments
appointment1 = Appointment.create(date: DateTime.now + 1.day, medical_center: 'Medical Center 1', doctor: doctor1)
appointment2 = Appointment.create(date: DateTime.now + 2.days, medical_center: 'Medical Center 2', doctor: doctor2)
appointment3 = Appointment.create(date: DateTime.now + 3.days, medical_center: 'Medical Center 1', doctor: doctor1)

# Create Pacients
pacient1 = Pacient.create(name: 'John', last_name: 'Doe', telephone: '123-456-7890', mail: 'john.doe@example.com', address: '123 Main St', inf: 'Any additional information')
pacient2 = Pacient.create(name: 'Jane', last_name: 'Smith', telephone: '987-654-3210', mail: 'jane.smith@example.com', address: '456 Oak St', inf: 'Any additional information')
pacient3 = Pacient.create(name: 'Alice', last_name: 'Johnson', telephone: '555-123-4567', mail: 'alice.johnson@example.com', address: '789 Elm St', inf: 'Any additional information')
