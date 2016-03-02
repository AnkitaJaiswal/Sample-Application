require 'spec_helper'

describe UserTimesController do

  describe "GET index" do
    it "assigns all user_times as @user_times" do
      user_time = Factory(:user_time)
      get :index
      assigns(:records).should eq([user_time]) 
    end
  end
  describe "GET show" do
    it "assigns the requested user_time as @user_time" do
      user_time = Factory(:user_time)
      get :show, {:id => user_time.id}  
      assigns(:user_time).should eq(user_time)
    end
  end
  describe "GET edit" do
    it "assigns the requested user_time as @user_time" do
      user_time = Factory (:user_time)
      get :edit, {:id => user_time.id}
      assigns(user_time).should eq(user_time)
    end
  end        
end