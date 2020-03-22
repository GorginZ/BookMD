require "rspec/autorun"



describe Appointment_printer do
    it "reads txt file and writes it in terminal display" do
        puts("\n\n")
        puts "These are your upcoming appointments:\n"
          File.open("appointments.txt").each do |line|
            puts line
          end

          expect(appointment.txt = not nil




def appointment_printer
    puts("\n\n")
  puts "These are your upcoming appointments:\n"
    File.open("appointments.txt").each do |line|
      puts line
    end
  end