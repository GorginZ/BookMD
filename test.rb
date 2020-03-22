require rspec/autorun

class Appointments
  def initialize(time_choice)
    "Dr Gregor"
  end
end

describe Appointments do
  it "manages user choices" do
    choice = Appointments.new

    expect(choice.equals("Dr Gregor")).to eq("Dr Gregor")
  end

  it "passes user choice" do
    string = Appointments.new 
  end
end