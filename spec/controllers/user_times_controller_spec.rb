require 'spec_helper'

describe UserTimesController do

  describe "GET index" do
    it "assigns all user_times as @user_times" do
      user_time = FactoryGirl.build(:user_time)
      get :index
      :user_times 
    end
    # it "renders the :index view" do
    #   get :index
    #   response.should render_template :index
    # end
  end

  describe "GET show" do
    it "assigns all user_time as @user_time" do
      # user_time = UserTime.create!
      user_time = FactoryGirl.build(:user_time)

      # user_time = UserTime.new
      puts "user_time.inspect :- "
      puts user_time.inspect
      # get :show, {id: user_time.id}
    end
  end 

end
  