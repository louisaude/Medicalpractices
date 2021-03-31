# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HealthCareCompany.destroy_all
Doctor.destroy_all
Hour.destroy_all

practice = HealthCareCompany.new(name: "Heartbeat medical solutions")
practice.save
  jane = Doctor.new(health_care_company: practice)
  jane.name = "Jane Doe"
  jane.save
    jm1 = Hour.new(doctor: jane, health_care_company: practice)
    jm1.weekday = 'Monday'
    jm1.opening_hour = '9'
    jm1.opening_minute = '0'
    jm1.closing_hour = '12'
    jm1.closing_minute = '30'
    jm1.save

    j2 = Hour.new(doctor: jane, health_care_company: practice)
    j2.weekday = 'Tuesday'
    j2.opening_hour = '9'
    j2.opening_minute = '0'
    j2.closing_hour = '18'
    j2.closing_minute = '30'
    j2.save

    j3 = Hour.new(doctor: jane, health_care_company: practice)
    j3.weekday = 'Wednesday'
    j3.opening_hour = '10'
    j3.opening_minute = '0'
    j3.closing_hour = '19'
    j3.closing_minute = '30'
    j3.save

    j4 = Hour.new(doctor: jane, health_care_company: practice)
    j4.weekday = 'Thursday'
    j4.opening_hour = '12'
    j4.opening_minute = '0'
    j4.closing_hour = '20'
    j4.closing_minute = '30'
    j4.save

    j5 = Hour.new(doctor: jane, health_care_company: practice)
    j5.weekday = 'Friday'
    j5.opening_hour = '9'
    j5.opening_minute = '0'
    j5.closing_hour = '15'
    j5.closing_minute = '30'
    j5.save

  
    

  
  joe = Doctor.new(health_care_company: practice)
  joe.name = "Joe Bloke"
  joe.save
    o1 = Hour.new(doctor: joe, health_care_company: practice)
    o1.weekday = 'Tuesday'
    o1.opening_hour = '9'
    o1.opening_minute = '0'
    o1.closing_hour = '15'
    o1.closing_minute = '30'
    o1.save

    o2 = Hour.new(doctor: joe, health_care_company: practice)
    o2.weekday = 'Wednesday'
    o2.opening_hour = '10'
    o2.opening_minute = '0'
    o2.closing_hour = '15'
    o2.closing_minute = '30'
    o2.save

    o3 = Hour.new(doctor: joe, health_care_company: practice)
    o3.weekday = 'Friday'
    o3.opening_hour = '9'
    o3.opening_minute = '0'
    o3.closing_hour = '15'
    o3.closing_minute = '30'
    o3.save

    o4 = Hour.new(doctor: joe, health_care_company: practice)
    o4.weekday = 'Saturday'
    o4.opening_hour = '9'
    o4.opening_minute = '0'
    o4.closing_hour = '12'
    o4.closing_minute = '30'
    o4.save


  regina = Doctor.new(health_care_company: practice)
  regina.name = "Regina Gal"
  regina.save

  r1 = Hour.new(doctor: regina, health_care_company: practice)
  r1.weekday = 'Monday'
  r1.opening_hour = '9'
  r1.opening_minute = '0'
  r1.closing_hour = '20'
  r1.closing_minute = '30'
  r1.save

  r2 = Hour.new(doctor: regina, health_care_company: practice)
  r2.weekday = 'Tuesday'
  r2.opening_hour = '9'
  r2.opening_minute = '0'
  r2.closing_hour = '16'
  r2.closing_minute = '30'
  r2.save

  r4 = Hour.new(doctor: regina, health_care_company: practice)
  r4.weekday = 'Sunday'
  r4.opening_hour = '9'
  r4.opening_minute = '0'
  r4.closing_hour = '17'
  r4.closing_minute = '30'
  r4.save

company = HealthCareCompany.create(name: "Extra caring medical professionals")
  marc = Doctor.new(health_care_company: company)
  marc.name = "Marc Guy"
  marc.save
  q1 = Hour.new(doctor: marc, health_care_company: company)
  q1.weekday = 'Tuesday'
  q1.opening_hour = '9'
  q1.opening_minute = '0'
  q1.closing_hour = '15'
  q1.closing_minute = '30'
  q1.save

  q2 = Hour.new(doctor: marc, health_care_company: company)
  q2.weekday = 'Wednesday'
  q2.opening_hour = '10'
  q2.opening_minute = '0'
  q2.closing_hour = '15'
  q2.closing_minute = '30'
  q2.save

  q3 = Hour.new(doctor: marc, health_care_company: company)
  q3.weekday = 'Friday'
  q3.opening_hour = '9'
  q3.opening_minute = '0'
  q3.closing_hour = '15'
  q3.closing_minute = '30'
  q3.save

  q4 = Hour.new(doctor: marc, health_care_company: company)
  q4.weekday = 'Saturday'
  q4.opening_hour = '9'
  q4.opening_minute = '0'
  q4.closing_hour = '12'
  q4.closing_minute = '30'
  q4.save

  cassandra = Doctor.new(health_care_company: company)
  cassandra.name = "Cassandra Lady"
  cassandra.save
    i1 = Hour.new(doctor: cassandra, health_care_company: company)
    i1.weekday = 'Monday'
    i1.opening_hour = '9'
    i1.opening_minute = '0'
    i1.closing_hour = '12'
    i1.closing_minute = '30'
    i1.save

    i2 = Hour.new(doctor: cassandra, health_care_company: company)
    i2.weekday = 'Tuesday'
    i2.opening_hour = '9'
    i2.opening_minute = '0'
    i2.closing_hour = '18'
    i2.closing_minute = '30'
    i2.save

    i3 = Hour.new(doctor: cassandra, health_care_company: company)
    i3.weekday = 'Wednesday'
    i3.opening_hour = '10'
    i3.opening_minute = '0'
    i3.closing_hour = '19'
    i3.closing_minute = '30'
    i3.save

    i4 = Hour.new(doctor: cassandra, health_care_company: company)
    i4.weekday = 'Thursday'
    i4.opening_hour = '12'
    i4.opening_minute = '0'
    i4.closing_hour = '20'
    i4.closing_minute = '30'
    i4.save

    i5 = Hour.new(doctor: cassandra, health_care_company: company)
    i5.weekday = 'Friday'
    i5.opening_hour = '9'
    i5.opening_minute = '0'
    i5.closing_hour = '15'
    i5.closing_minute = '30'
    i5.save


  steve = Doctor.new(health_care_company: company)
  steve.name = "Steve Dude"
  steve.save
  pp1 = Hour.new(doctor: steve, health_care_company: company)
  pp1.weekday = 'Sunday'
  pp1.opening_hour = '9'
  pp1.opening_minute = '0'
  pp1.closing_hour = '12'
  pp1.closing_minute = '30'
  pp1.save

office = HealthCareCompany.create(name: "Healthy and happy medical practice")
  sarah = Doctor.new(health_care_company: office)
  sarah.name = "Sarah Femme"
  sarah.save
    k1 = Hour.new(doctor: sarah, health_care_company: office)
    k1.weekday = 'Monday'
    k1.opening_hour = '9'
    k1.opening_minute = '0'
    k1.closing_hour = '12'
    k1.closing_minute = '30'
    k1.save
  
  anthony = Doctor.new(health_care_company: office)
  anthony.name = "Anthony Boy"
  anthony.save
  gg1 = Hour.new(doctor: anthony, health_care_company: office)
  gg1.weekday = 'Monday'
  gg1.opening_hour = '9'
  gg1.opening_minute = '0'
  gg1.closing_hour = '12'
  gg1.closing_minute = '30'
  gg1.save

  gg2 = Hour.new(doctor: anthony, health_care_company: office)
  gg2.weekday = 'Tuesday'
  gg2.opening_hour = '9'
  gg2.opening_minute = '0'
  gg2.closing_hour = '18'
  gg2.closing_minute = '30'
  gg2.save

  gg3 = Hour.new(doctor: anthony, health_care_company: office)
  gg3.weekday = 'Wednesday'
  gg3.opening_hour = '10'
  gg3.opening_minute = '0'
  gg3.closing_hour = '19'
  gg3.closing_minute = '30'
  gg3.save

  gg4 = Hour.new(doctor: anthony, health_care_company: office)
  gg4.weekday = 'Thursday'
  gg4.opening_hour = '12'
  gg4.opening_minute = '0'
  gg4.closing_hour = '20'
  gg4.closing_minute = '30'
  gg4.save

  gg5 = Hour.new(doctor: anthony, health_care_company: office)
  gg5.weekday = 'Friday'
  gg5.opening_hour = '9'
  gg5.opening_minute = '0'
  gg5.closing_hour = '15'
  gg5.closing_minute = '30'
  gg5.save

  julia = Doctor.new(health_care_company: office)
  julia.name = "Julia Girl"
  julia.save
  jk2 = Hour.new(doctor: julia, health_care_company: office)
  jk2.weekday = 'Tuesday'
  jk2.opening_hour = '9'
  jk2.opening_minute = '0'
  jk2.closing_hour = '16'
  jk2.closing_minute = '30'
  jk2.save

  jk4 = Hour.new(doctor: julia, health_care_company: office)
  jk4.weekday = 'Sunday'
  jk4.opening_hour = '9'
  jk4.opening_minute = '0'
  jk4.closing_hour = '17'
  jk4.closing_minute = '30'
  jk4.save

