require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'
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
    #     prompt = TTY::Prompt.new
    # choices = %w("Monday" "Tuesday" "Wednesday" "Thursday" "friday")
    # day_choice = prompt.multi_select("Select Day", choices)
    #     #   return time_choice
    #    return day_choice
# end
        


    prompt = TTY::Prompt.new
    day_choice = prompt.select("Select Appointment Day") do |menu|
        menu.choice 'Monday', 1
        menu.choice 'Tuesday', 2, disabled: '(no availabilities)' 
        menu.choice 'Wednesday', 3, disabled: '(no availabilities)'
        menu.choice 'Thursday', 4, disabled: '(no availabilities)'
        menu.choice 'Friday', 5, disabled: '(no availabilities)'
    end

      case
      when day_choice == 'Monday'  #problem
        dr_selection
       mon_time_selection
      end
      return day_choice, mon_time_selection
end

def mon_time_selection 
    prompt = TTY::Prompt.new
    choices = %w("8.30" "2.00")
    time_choice = prompt.multi_select("Select time", choices)
    #   return time_choice
      puts time_choice 
end
    

    def dr_selection 
        prompt = TTY::Prompt.new
    day_choice = prompt.select("Select Appointment Day") do |menu|
        menu.choice 'Monday', 1
        menu.choice 'Tuesday', 2, disabled: '(no consultations available)' 
        menu.choice 'Wednesday', 3, disabled: '(no consultations available)' 
        menu.choice 'Thursday', 4, disabled: '(no consultations available)' 
        menu.choice 'Friday', 5, disabled: '(no consultations available)' 
    end
    return day_choice 
    end
  


def start
    prompt = TTY::Prompt.new
    system("clear")
    first_menu = prompt.select("welcome to bookMD") do |menu|
        menu.choice 'book_appointment'
        menu.choice 'manage_appointments'
    end
    return first_menu
end    


 start  #move to main file DO NOT FORGET THIXS
 case
when first_menu = 'book_appointment'  # this is broken always returns drs info even if first menu = manage_appointments
    drs_info
    day_select
    dr_selection
    mon_time_selection
when first_menu = 'manage_appointments'
   puts "current appointments"
end






# puts new_appointment

# def add(key_value)
#     key_value.each do |key, value|
#         @your_appointments[key] = value
#     end
#     self
# end

#   def keywords
#     @your_appointments.keywords
#   end


# print @your_appointments



# def booked_appointment(day_choice, dr_choice time_choice)
#     your_appointment = day_select, dr_selection, mon_time_selection
# end    

# def confirm_booking_to_user(booked_appointment)
#     box = TTY::Box.frame(width: 30, height: 10, align: :center) do
#         your_appointment 
#       end
    
# end

# puts booked_appointment



 