require 'rails_helper'

describe Prize, type: :model do
  subject { FactoryGirl.build :prize }

  it { is_expected.to be_valid }

  describe :attributes do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :coins }
  end
end
