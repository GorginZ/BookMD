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
    drs = TTY::Table.new header: ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray','Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['Monday', 'Monday','-----','-----','Monday',], ['Tuesday', 'Tuesday','Tuesday','Tuesday','Tuesday'], ['Wednesday', 'Wednesday','Wednesday','-----','Wednesday'],['Thursday', 'Thursday','Thursday','-----','Thursday'],['Friday', 'Friday','Friday','Friday','Friday']]
# drs.render(:ascii)
puts "availability for all doctors"
  puts box
puts drs.render(:ascii)

end


def day_select 
  
    prompt = TTY::Prompt.new
    day_choice = prompt.select("Select Appointment Day") do |menu|
        menu.choice 'Monday'
        menu.choice 'Tuesday'
        menu.choice 'Wednesday'
        menu.choice 'Thursday'
        menu.choice 'Friday'
    end

      case
      when day_choice == 'Monday'
       mon_time_selection
      end
end



def mon_time_selection 
    prompt = TTY::Prompt.new
choices = %w("8.30" "9.00")
time_choice = prompt.multi_select("Select time", choices)
    #   return time_choice
      puts time_choice 
    end
    

    # return day_choice + time_choices


# def monday_display
#     system("clear") 
#     mondaytimes = TTY::Table.new header: 
    
#     ['Dr. Gregor','Dr. Helen Kouzmin','Dr. Patrick Chan'], rows: [['8.30am', '9.00','9.30'], ['11.30', '2.00pm','3.00pm']]
    
#     mondaytimes.render(:ascii)
# end


# def monday_appointments
#     prompt = TTY::Prompt.new
#      monday_select = prompt.select("welcome to bookMD") do |menu|
#         menu.choice 'Dr. Gregor 8.30am'
#         menu.choice 'Dr. Gregor 11.30'
#         menu.choice 'Dr. Helen Kouzmin 9.00am'
#         menu.choice 'Dr. Helen Kouzmin 2.00pm'
#         menu.choice 'Dr. Patrivk Chan 9.30am'
#         menu.choice 'Dr. Patrivk Chan 3.00pm'
#         menu.choice 'Back to week availability'

#     end
   
# end

#     def monday_selector
#     monday_appointment = menu.choice
#     #     case
    

#     #   when monday_select == 'Dr. Gregor 8.30am'
       
#     # when  monday_select == 'Dr. Gregor 11.30'
#     #     appointment_time = 'Dr. Gregor 11.30' 

#     # when monday_select == 'Dr. Helen Kouzmin 2.00pm'
#     #    appointment_time = 'Dr. Helen Kouzmin 2.00'
#     # when monday_select == 'Dr. Helen Kouzmin 9.00am'
#     #     print "9"
#     # when monday_select ==  'Dr. Patrivk Chan 9.30am'
#     #     print "kkj"
#     # when monday_select ==  'Dr. Patrivk Chan 3.00pm'
#     #     print "c 3"
#     # when monday_select == 'Back to week availability'
#     #     system("clear")
#     #     print booking_info
#         return menu.choice
#     # end
# end
  
# def tuesday_display
#     system("clear") 
#     tuesdaytimes = TTY::Table.new header: 
    
#     ['Dr. Gregor','Dr. Helen Kouzmin','Dr Kooray', 'Dr. Sade Weatley','Dr. Patrick Chan'], rows: [['9.30am', '10.00am','2.30pm','9.00am','10.00am'], ['1.30pm', '2.00pm','3.00pm','3.00pm ','  ']]
    
#     tuesdaytimes.render(:ascii)
# end

# def tuesday_appointments
#     prompt = TTY::Prompt.new
#      tuesday_select = prompt.select("Tuesday Appointments - Scroll down to view all appointment availabilities") do |menu|
#         menu.choice 'Dr. Gregor 9.30am'
#         menu.choice 'Dr. Gregor 1.30'
#         menu.choice 'Dr. Helen Kouzmin 10.00am'
#         menu.choice 'Dr. Helen Kouzmin 2.00pm'
#         menu.choice 'Dr. Lanka Kooray 2.30pm'
#         menu.choice 'Dr. Lanka Kooray 3.00pm'
#         menu.choice 'Dr. Sade Weatley 9.00am'
#         menu.choice 'Dr. Sade Weatley 3.00pm'
#         menu.choice 'Dr. Patrivk Chan 10.00am'
#         menu.choice 'Back to week availability'

#     end
#     case
#     when  tuesday_select == 'Dr. Gregor 8.30am'
#         print "greg"
#     when tuesday_select== 'Dr. Gregor 8.90am'
#         prompt = TTY::Prompt.new
#         confirm =  prompt.yes?('Confirm appointment 9.30?')
#     when  tuesday_select == 'Dr. Gregor 11.30'
#         print "l"
#     when tuesday_select == 'Dr. Helen Kouzmin 2.00pm'
#         print "2"
#     when tuesday_select == 'Dr. Helen Kouzmin 9.00am'
#         print "9"
#     when tuesday_select ==  'Dr. Patrivk Chan 9.30am'
#         print "kkj"
#     when tuesday_select ==  'Dr. Patrivk Chan 3.00pm'
#         print "c 3"
#     when tuesday_select == 'Back to week availability'
#         system("clear")
#         print booking_info
#     end
# end
  


def start
    prompt = TTY::Prompt.new
    system("clear")
    first_menu = prompt.select("welcome to bookMD") do |menu|
        menu.choice 'book_appointment'
        menu.choice 'manage_appointments'
    end
    return first_menu
end    


   
 start
case
when first_menu = 'book_appointment'
    drs_info
    day_select
when firt_menu = 'manage_appointments'
   puts "current appointments"
end
# return welcome
# end   











