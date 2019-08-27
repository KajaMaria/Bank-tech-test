require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  context "New Transaction" do
    describe "#Initialize" do
      it "should start with clear history" do
        expect(transaction.history).to eq([])
      end
    end

  end
end 
