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
  


#  p printer





