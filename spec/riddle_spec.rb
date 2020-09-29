require ('rspec')
require ('riddle.rb')

describe '#Riddle' do
  
  before(:each) do
    Riddle.clear()
  end

  describe('.all') do
    it("returns an array...") do
      expect(Riddle.all).to(eq([]))
    end
  end

end