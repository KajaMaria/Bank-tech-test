require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new}

  context "New Transaction" do
    describe "#Initialize" do
      it "should start with clear history" do
        expect(transaction.history).to eq([])
      end
    end

    describe "#total date, amount, final balance" do
      it "should add date, amount, final balance" do
        expect(transaction.total("27/08/2019","20","20")).to eq(["27/08/2019",20.00,20.00])
      end
    end
  end
end
