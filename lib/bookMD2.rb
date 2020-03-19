require 'rubygems'
require 'tty-prompt'
require 'tty-reader'
require 'tty-table'
require 'tty-box'
prompt = TTY::Prompt.new

class Appointments  
    attr_accessor :dr_choice, :day_choice, :mon_time_selection
    def initialize(dr_choice, day_choice, mon_time_selection)
    @dr_choice = dr_selection
    @day_choice = day_select
    @mon_time_selection = mon_time_selection
end
self
end

def new_appointment
  dr_choice = @dr_choice
  day_choice = @day_choice
  mon_time_selection = @mon_time_selection

the_appointment = Appointments.new(:dr_choice, :day_choice, :mon_time_selection)
#puts the_appointment
end


def drs_info
    box = TTY::Box.frame(width: 30, height: 10, align: :center) do
        "info about docs specialisations etc"
      end
    drs = TTY::Table.new header: ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
# drs.render(:ascii)
puts "availability for all doctors"
  puts box
puts drs.render(:ascii)

end


def day_select 
  
  
   
        prompt = TTY::Prompt.new
    choices = %w("Monday" "Tuesday" "Wednesday" "Thursday" "friday")
    day_choice = prompt.multi_select("Select Day", choices)
        #   return time_choice
          puts day_choice 
        end
        


#     prompt = TTY::Prompt.new
#     day_choice = prompt.select("Select Appointment Day") do |menu|
#         menu.choice 'Monday'
#         menu.choice 'Tuesday'
#         menu.choice 'Wednesday'
#         menu.choice 'Thursday'
#         menu.choice 'Friday'
#     end

#       case
#       when day_choice == 'Monday'  #problem
#         dr_selection
#        mon_time_selection
#       end
#       return day_choice
# end


def mon_time_selection 
    prompt = TTY::Prompt.new
choices = %w("8.30" "9.00")
time_choice = prompt.multi_select("Select time", choices)
    #   return time_choice
      puts time_choice 
    end
    

    def dr_selection 
        prompt = TTY::Prompt.new
    choices = %w('Dr.Gregor' 'Dr.Kouzmin' 'Dr.Kooray' 'Dr.Weatley' 'Dr.Chan')
    dr_choice = prompt.multi_select("Select dr", choices)
        #  return time_choice
        
    return dr_choice 
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
when first_menu = 'book_appointment'
    drs_info
    day_select
    dr_select
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



 