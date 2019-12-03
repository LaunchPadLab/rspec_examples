require 'rails_helper'

RSpec.describe Order, type: :model do
  let(:order) { build(:order) }
  subject { order }
  it { should be_valid }

  it { is_expected.to validate_presence_of(:total) }
  it { is_expected.to validate_presence_of(:taxes) }
  it { is_expected.to validate_presence_of(:shipping) }
  it { is_expected.to validate_presence_of(:subtotal) }

  describe '.discount_amount' do
    subject { order.discount_amount }    
    before(:each) do
      allow(Coupon).to receive(:find_by).and_return(coupon)
    end    
    
    context 'with a coupon code' do
      let(:coupon) { build(:coupon, amount: 100) }
      it { is_expected.to eq(100) }
    end

    context 'without a coupon code' do
      let(:coupon) { nil }
      it { is_expected.to eq(0) }
    end    
  end
end
