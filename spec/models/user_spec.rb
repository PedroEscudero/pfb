require 'rails_helper'

describe User do
  subject { FactoryGirl.build :user }

  it { is_expected.to be_valid }

  describe :attributes do
    it { is_expected.to respond_to :username }
    it { is_expected.to respond_to :email }
    it { is_expected.to respond_to :coins }
  end
end
