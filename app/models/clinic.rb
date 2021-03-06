# frozen_string_literal: true

class Clinic < ApplicationRecord

  has_many :doctors
    validates :name, :location, presence: true

    validates :name, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z\s]+\Z/,
  message: "only allows letters" }
end
