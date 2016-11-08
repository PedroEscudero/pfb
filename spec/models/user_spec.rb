require 'rails_helper'

describe User do
  subject { FactoryGirl.build :user }

  it { is_expected.to be_valid }

  describe :attributes do
    it { is_expected.to respond_to :username }
    it { is_expected.to respond_to :email }
    it { is_expected.to respond_to :coins }
    it { is_expected.to respond_to :level }
  end

  describe "Test class User Methods" do

  	  before(:each) do
        @user = subject
        @user.save! 
      end

	  it "Increment coins method" do
	  	@user.increment_coins(50, "Plus 50")
	  	expect(@user.coins).to eq 4050
	  	expect(@user.transactions.last.reason).to eq "Plus 50"
	  end

	  it "Decrement coins method" do
	  	@user.decrement_coins(50, "Minus 50")
	  	expect(@user.coins).to eq 3950
	  	expect(@user.transactions.last.reason).to eq "Minus 50"
	  end

	  it "Reset coins method" do
	  	@user.reset_coins
	  	expect(@user.coins).to eq 0
	  	expect(@user.transactions.last.reason).to eq "Reseted coins"
	  end

	  it "Change coins method negative" do
	  	@user.send "change_coins", -30,  "Minus 30"
	  	expect(@user.coins).to eq 3970
	  	expect(@user.transactions.last.reason).to eq "Minus 30"
	  end

	  it "Change coins method posite" do
	  	@user.send "change_coins", 30,  "Plus 30"
	  	expect(@user.coins).to eq 4030
	  	expect(@user.transactions.last.reason).to eq "Plus 30"
	  end

  end

end
