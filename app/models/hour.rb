class Hour < ApplicationRecord
  belongs_to :doctor
  belongs_to :health_care_company

  validates_numericality_of :closing_hour, 
  greater_than: Proc.new { project.current_release }
end

  WEEKDAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  HOUR = (00..23)
  MINUTE = (00..59)

end
