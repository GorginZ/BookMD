RSpec.new_appointment do
  it "writes the appointment to a txt file " do
    expect(new_appointment::"appointsments.txt").not_to be nil
  end

  # it "does something useful" do
  #   expect(false).to eq(true)
  # end
# end
