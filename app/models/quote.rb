class Quote < ApplicationRecord
  belongs_to :user
  validates :property_type, :location, :estimated_value, presence: true

  enum status: {
    pending: "pending",
    approved: "approved",
    rejected: "rejected",
    expired: "expired"
  }
end
