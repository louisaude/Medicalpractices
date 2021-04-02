class HealthCareCompany < ApplicationRecord
  has_many :doctors, dependent: :destroy
  has_many :hours, dependent: :destroy
  before_save :capitalize_attributes

  private

  def capitalize_attributes
    attributes.select { |a| %w[name].include? a }.each do |attr, val|
      send("#{attr}=", val.try(:strip).try(:capitalize))
    end
  end
end
