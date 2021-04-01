class HealthCareCompany < ApplicationRecord
  has_many :doctors, dependent: :destroy
  has_many :hours, dependent: :destroy
end
