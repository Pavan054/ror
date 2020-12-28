class Arm < ApplicationRecord
    has_many :participants
    validates :name, :limit, presence: true

    validates :name, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z\s]+\Z/,
  message: "only allows letters" }

  validates :limit, numericality: { only_integer: true }
end
