require 'rails_helper'

RSpec.describe Fighter, type: :model do
  describe 'validations' do
    subject { build(:fighter) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:energy) }
    it { should validate_presence_of(:strength) }
    it { should validate_presence_of(:avatar).allow_nil }
    it { should validate_presence_of(:stamina) }
    it { should validate_numericality_of(:energy).only_integer.is_greater_than_or_equal_to(75).is_less_than_or_equal_to(100) }
    it { should validate_numericality_of(:strength).only_integer.is_greater_than_or_equal_to(5).is_less_than_or_equal_to(15) }
    it { should validate_numericality_of(:stamina).only_integer.is_greater_than_or_equal_to(50).is_less_than_or_equal_to(100) }
  end
end
