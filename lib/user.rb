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
  attr_accessor :dr_choice, :day_choice, :time_choice
  def initialize(dr_choice, day_choice, time_choice)
  @dr_choice #= dr_selection
  @day_choice #= day_select
  @time_choice #= mon_time_selection
end
self
end

def new_appointment
  the_appointment = Appointments.new(:dr_choice, :day_choice, :time_choice)
appointments = {}
appointments.store(:the_appointment,())

@dr_choice = dr_selection
@day_choice = day_select
@time_choice = mon_time_selection
{
'dr_choice': @dr_choice,
'day_choice': @day_choice,
'time_choice': @time_choice,
}
end

def appointment_printer    
  separator = ' '
  File.open("appointments.txt","a+") do |f|  #flag
  
      f.puts(new_appointment)
      f.puts(separator)
  end
  end

