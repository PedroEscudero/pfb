require 'rails_helper'

describe Transaction do
 subject { FactoryGirl.build :transaction }

  it { is_expected.to be_valid }

  describe :attributes do
    it { is_expected.to respond_to :reason }
    it { is_expected.to respond_to :amount }
    it { is_expected.to respond_to :user_id }
  end
end
