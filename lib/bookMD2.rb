
require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'
require 'artii'
prompt = TTY::Prompt.new

def drs_info
    box = TTY::Box.frame(width: 60, height: 20, align: :left) do
        "Our team of doctors offer a comprehensive general practice. All have been practicing for over a decade in our community. 
        \nALL DOCTORS OFFER BULK BILLING. \nALL GPS ARE ABLE TO ASSIST WITH WORKCOVER AND TAC CONSULTATIONS.\n \nDr Gregor specialises and has a background in nutrition.\n \nDr. Helen Kouzmin specialises in neurology is a member of the royal australasian collage of physicians.\n \nDr Sade Weatley specialises in womens health and has 6 years of experience in delveries and birth related surgeries at Box Hill public hospital.\n \nPatrick Chan specialises in the treatment and management of chronic pain disorders"
      end
    drs = TTY::Table.new header: ['Dr. Gregor ','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday 8.30, 2.00', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
# drs.render(:ascii)

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
        dr = prompt.select("Select Dr") do |menu|
        menu.choice 'Dr Gregor', 'Dr. Gregor' 
        menu.choice 'Dr. Helen', 'Dr. Helen', disabled: '(no consultations available)'
        menu.choice 'Dr. Kooray', 'Dr. Kooray', disabled: '(no consultations available)'  
        menu.choice 'Dr. Weatley', 'Dr. Weatley', disabled: '(no consultations available)' 
        menu.choice 'Dr. Chan', 'Dr. Chan', disabled: '(no consultations available)' 
    end
    return dr
    end
    def start
        system("clear")
        start_title = TTY::Box.frame(width: 50, height: 20, align: :left) do
            "Welcome to BOOKMD\n \nTo view dr availability and book an appointment and select 1. \n \nTo manage and view your appointmrnts preass 2. \n \nTo make an appointment over the phone please call our rooms on 12345893.\n \nIF YOU ARE EXPERIENCING A MEDICAL EMERGENCY DIAL 000 \n \nIF YOU ARE EXPERIENCING FLU LIKE SYMPTOMS: HEADACHE, FEVER, ACHING, COUGHING, RESPATORY ISSUES MUST CALL THE PRACTICE PRIOR TO ATTENDING.\n \nMORE INFORMATION IS AVAILABLE AT THE COVID19 HOTLINE "
           end
           puts start_title

     puts "1.  BOOK APPOINTMENT"
     puts "2. VIEW YOUR APPOINTMENTS"
     puts " >    "
     selection = gets.chomp
     if selection == "1"
        drs_info
        new_appointment
         printer
      appointment_printer
     display_booking_to_user
     elsif selection == "2"
        # puts the_appointment(book_appointment)
        appointment_printer
     end
    end
def display_booking_to_user
    confirm = TTY::Box.frame(width: 30, height: 10, align: :center) do
       "IF YOU NEED TO CANCEL YOUR APPOINTMENT ON THE SAME DAY OF YOUR APPOINTMENT PLEASE CALL THE ROOMS TO DO SO"
      end
      puts confirm
end





 