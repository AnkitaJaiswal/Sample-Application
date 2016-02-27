class UserTime < ActiveRecord::Base
  

  validate :current_time_formate

  def current_time_formate
    valid = false if (current_time =~ /^\d{9}\:\d{9}\:\d{9}$/).nil?
    valid = Time.strptime(current_time, '%T') rescue false unless valid == false
    
  end
end
