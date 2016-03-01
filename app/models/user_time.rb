class UserTime < ActiveRecord::Base
  

  validate :current_time_formate

  def current_time_formate
    valid = false if (current_time =~ /^\d{2}\:\d{2}\:\d{2}$/).nil?
    valid = Time.strptime(current_time, '%T') rescue false unless valid == false
    errors.add(:current_time, "is invalid") if valid == false
  end
end
 