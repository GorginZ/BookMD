
class Patient 
  attr_accessor :name, :phone, :email, :travel
  def initialize(name, phone, email, travel)
    @name = name
    @phone = phone
    @email = email
    @travel = travel
  end
  self
end
def make_patient   #this method makes a patient from user input in terminal
  new_patient = Patient.new(:name, :phone, :email, :travel)
patients = {}
patients.store(:new_patient,())  
print "Name: "
    @name = gets.chomp
    print "Phone: "
    @phone = gets.chomp
    print "Email: "
    @email = gets.chomp
    print "have you been overseas in the last two weeks or in close contact with someone who has? type Y or N: "
    @travel = gets.chomp
     {
      'Name': @name,
      'Phone': @phone,
      'Email': @email,
      'Travel': @travel
    }
end
def printer    #this method takes the patient from make_patient method and adds it to txt file
separator = ' '
File.open("patients.txt","a+") do |f|  #flag
    f.puts(make_patient)
    f.puts(separator)
  #  puts patients
end
end 
class Appointments  
  attr_accessor :dr, :day_choice, :time_choice
  def initialize(dr, day_choice, time_choice)
  @dr #= dr_selection
  @day_choice #= day_select
  @time_choice #= mon_time_selection
end
self
end
def new_appointment
the_appointment = Appointments.new(:dr, :day_choice, :time_choice)
appointments = {}
appointments.store(:the_appointment,())
@dr = dr_selection
@day_choice = day_select
@time_choice = mon_time_selection
#TODO: if you are using symbols as hash keys then you don't need the quotation marks
new_appointment = {
dr: @dr,
day_choice: @day_choice,
time_choice: @time_choice,
}
#TODO:I just made the individual lines write each hash item individually, you can add other stuff too
#This needs to be movedd into the new appointment function for you to write to the txt file easily
File.open("appointments.txt","a+") do |f|  #flag
  f.puts("Dr: #{new_appointment[:dr]}")
  f.puts("Day: #{new_appointment[:day_choice]}")
  f.puts("Time: #{new_appointment[:time_choice]}")
  f.puts("\n")
end
end
#TODO: Modify this to print whatever you like - this will just read the file
def appointment_printer
  puts("\n\n")
puts "These are your upcoming appointments:\n"
  File.open("appointments.txt").each do |line|
    puts line
  end
end