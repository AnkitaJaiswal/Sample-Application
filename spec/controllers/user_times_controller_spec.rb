require 'spec_helper'

describe UserTimesController do

  describe "GET index" do
    it "assigns all user_times as @user_times" do
      user_time = FactoryGirl.build(:user_time)
      get :index
      :user_times 
    end
  end

  describe "GET show" do
    it "assigns all user_time as @user_time" do
      user_time = FactoryGirl.build(:user_time)
      puts "user_time.inspect :- "
      puts user_time.inspect
    end
  end

  describe "GET new" do
    before(:each) do
    it "assigns a new user_time as @user_time" 
      get :new
      assigns(:user_time).should be_a_new(UserTime)
    end 
  end

  describe "POST create" do
    context "with valid params" do
      it  "creates a new user_time" do
        expect {
          params =  FactoryGirl.attributes_for(:user_time)
        }.to change(UserTime, :count).by(0) 
      end
    end
    context "with invalid params" do
      it "assigns a newly created but unsaved user_time as @user_time" do
        expect {
          params =  FactoryGirl.attributes_for(:user_time)
        }.to change(UserTime, :count).by(0)
      end
    end
  end 

  describe "DELETE destroy" do
   before :each do
      @user_time = FactoryGirl(:user_time)
    end
  end  

  describe "PUT update" do
    before :each do
      @user_time = FactoryGirl(:user_time)
      @user.reload
    end 
  end   
end 