class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details, dependent: :destroy
  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: {
    waiting_payment: 0,
    confirm_payment: 1,
    production: 2,
    shipping: 3,
    shipped: 4
    }
end
