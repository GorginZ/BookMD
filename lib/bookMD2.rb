require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'
require 'artii'
prompt = TTY::Prompt.new

def drs_info
    box = TTY::Box.frame(width: 30, height: 10, align: :center) do
        "info about docs specialisations etc"
      end
    drs = TTY::Table.new header: ['Dr. Gregor ','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday 8.30, 2.00', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
# drs.render(:ascii)
puts "availability for all doctors"
  puts box
puts drs.render(:ascii)

end


def day_select 
      prompt = TTY::Prompt.new
    day_choice = prompt.select("Select Appointment Day") do |menu|
        menu.choice 'Monday', 'Monday'
        menu.choice 'Tuesday', 'Tuesday', disabled: '(no availabilities)' 
        menu.choice 'Wednesday', 'Wednesday', disabled: '(no availabilities)'
        menu.choice 'Thursday', 'Thursday', disabled: '(no availabilities)'
        menu.choice 'Friday', 'Friday', disabled: '(no availabilities)'
    end
      return day_choice
end



def mon_time_selection 
    prompt = TTY::Prompt.new
    choices = %w("8.30" "2.00")
    time_choice = prompt.multi_select("Select time", choices)
      return time_choice 
end
    

    def dr_selection 
        prompt = TTY::Prompt.new
        dr_choice = prompt.select("Select Dr") do |menu|
        menu.choice 'Dr Gregor', 'Dr. Gregor' 
        menu.choice 'Dr. Helen', 'Dr. Helen', disabled: '(no consultations available)'
        menu.choice 'Dr. Kooray', 'Dr. Kooray', disabled: '(no consultations available)'  
        menu.choice 'Dr. Weatley', 'Dr. Weatley', disabled: '(no consultations available)' 
        menu.choice 'Dr. Chan', 'Dr. Chan', disabled: '(no consultations available)' 
    end
    return dr_choice 
    end
  
def start
    system("clear")
 puts "1.  BOOK APPOINTMENT"
 puts "2. VIEW YOUR APPOINTMENTS"
 puts " >    "

 selection = gets.chomp
 if selection == "1"
    drs_info
  appointment_printer
  printer
  display_booking_to_user
 elsif selection == "2"
    puts the_appointment(book_appointment)
 end
end




def display_booking_to_user
    confirm = TTY::Box.frame(width: 30, height: 10, align: :center) do
       "YOUR APPOINTMENT IS CONFIRMED"
      end
      puts confirm
    
end





 