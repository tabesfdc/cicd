require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'Account' do
    it "is valid with a firstname, lastname and email" do
      account = Account.new(
      firstname: 'Takashi',
      lastname:  'Abe',
      email:     'tabe@salesforce.com')
      expect(account).to be_valid
    end
    it "is invalid without a firstname" do
      account = Account.new(firstname: nil)
      account.valid?
      expect(account.errors[:firstname]).to eq([])
    end
    it "is invalid without a lastname" do
      account = Account.new(lastname: nil)
      account.valid?
      expect(account.errors[:lastname]).to eq([])
    end
    it "is invalid without an email address" do
      account = Account.new(email: nil)
      account.valid?
      expect(account.errors[:email]).to eq([])
    end
  end
end
