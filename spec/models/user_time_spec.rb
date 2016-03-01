require 'spec_helper'

describe UserTime do

  context 'validation' do
    [:current_time].each do |att|
    end  

    it "should return user_times" do
      user_time = Factory(:user_time, :current_time => '12:7:5')
      UserTime.find_user_times(val,{current_time => '12:7:05'}).should == [user_time]
    end
  end    
end
