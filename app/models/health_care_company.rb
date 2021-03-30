class HealthCareCompany < ApplicationRecord
  has_many :doctors
  has_many :hours, dependent: :destroy
end
