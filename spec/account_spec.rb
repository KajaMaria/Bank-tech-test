require "account"

describe Account do
  subject(:account) {described_class.new}

  context "New Account" do
    describe "#Initialize" do
      it "should have an empty balance" do
        expect(account.balance).to eq(0)
      end
    end

    describe "#Deposit amount to the account" do
      it "should allow client to deposit amount" do
        expect(account.deposit(100)).to eq(100)
      end
    end

    describe "#Withdrawal amount" do
      it "should allow client to withdrawal money from their account" do
        account.deposit(100)
        account.withdrawal(50)
        expect(account.balance).to eq(50)
      end
    end

    describe "#Insufficent_funds" do
      it "raises an error if balance is below 0" do
        expect{ account.withdrawal(10) }.to raise_error 'Balance is insufficient for a withdrawal'
      end
    end
  end

end
