class Order < ApplicationRecord
  validates :total, :taxes, :shipping, :subtotal, presence: true

  def discount_amount
    coupon = Coupon.find_by(code: coupon_code)
    coupon.try(:amount) || 0
  end
end
