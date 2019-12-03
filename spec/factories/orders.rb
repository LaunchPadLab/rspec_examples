FactoryBot.define do
  factory :order do
    total { 1000 }
    taxes { 100 }
    shipping { 100 }
    subtotal { 800 }
    coupon_code { nil }
  end
end
