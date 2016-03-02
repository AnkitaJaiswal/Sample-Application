require 'spec_helper'

describe UserTime do

  context "current_time_validation" do
    it "should return error if the time is not valid" do
      user_time = FactoryGirl.build(:user_time, :current_time => "15:20:40:20")
      user_time.should_not be_valid
      
      user_time.errors.messages[:current_time].should include("is invalid")
      user_time = FactoryGirl.build(:user_time, :current_time => "15:20")
      user_time.should_not be_valid
      user_time.errors.messages[:current_time].should include("is invalid")
      user_time = FactoryGirl.build(:user_time, :current_time => "15:30:40")
      user_time.should be_valid
      #user_time.messages(:current_time).should include("is valid")
    end  
    it "should return result if the time is valid" do
      user_time = FactoryGirl.build(:user_time, :current_time => "15:30:40")
      user_time.should be_valid
      user_time.errors.messages[:current_time].should   
    end
  end        
end
  