class UserTime < ActiveRecord::Base
  validate :timezone_exists

private

def timezone_exists
  return if ActiveSupport::TimeZone[timezone].present?
  errors.add(:timezone, "does not exist")
end

end
