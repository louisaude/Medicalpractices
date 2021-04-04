class Doctor < ApplicationRecord
  belongs_to :health_care_company
  has_many :hours, dependent: :destroy
  before_save :capitalize_name

  private

  def capitalize_name
    self.name = name.split.collect(&:capitalize).join(' ') if name && !name.blank?
  end
end
