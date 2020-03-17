
def make_patient   #this method makes a patient from user input in terminal
 patients = {}

print "Name: "
    name = gets.chomp
    print "Phone: "
    phone = gets.chomp
    print "Email: "
    email = gets.chomp
    print "have you been overseas in the last two weeks or in close contact with someone who has? type Y or N: "
    travel = gets.chomp
    patient = {
      'Name': name,
      'Phone': phone,
      'Email': email,
      'Travel': travel
    }
    
end

def printer(make_patient)     #this method takes the patient from make_patient method and adds it to txt file
separator = ' '
File.open("patients.txt","a+") do |f|  #flag

    f.puts(make_patient)
    f.puts(separator)
   
end
end
   
 p printer(make_patient)



