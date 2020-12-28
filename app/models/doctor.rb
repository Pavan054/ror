class Doctor < ApplicationRecord

    has_many :clinics

    validates :name, :specification, presence: true

    validates :name, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z\s]+\Z/,
  message: "only allows letters" }

end
