require 'van'

describe Van do
  it '#initialize receives an argument' do
    expect {Van.new}.to raise_error(ArgumentError)
  end

end
