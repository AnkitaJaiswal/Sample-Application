require 'spec_helper'

describe UserTimesController do

  describe "GET index" do

    before(:each) do
      it "assigns all user_times as @user_times" do
        user_time = FactoryGirl.create(:user_time)
        get :index
        assigns(:user_times).should eq([user_time]) 
      end 
    end
  end  

  describe "GET show" do
    before :each do
      it "assigns the requested user_time as @user_time" do
        user_time = FactoryGirl.create(:user_time)
        get :show, {:id => user_time.id}
        assigns(:user_time).should eq(user_time) 
      end 
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
    context "create" do
      before :each do 
        it  "creates a new user_time with valid params" do     
          expect {
            post :create, user_time: FactoryGirl.attributes_for(:user_time)
          }.to change(UserTime, :count).by(1) 
        end
        it "does not save the new user_time with invalid params" do
          params = FactoryGirl.attributes_for(:user_time, :current_time => "22:22:222")
          expect{
            post :create, {:user_time => params}
          }.to_not change(UserTime,:count)
        end
      end
    end 
  end   



  describe "DELETE destroy" do
    before :each do
      it "destroys the requested user_time" do
        @user_time = FactoryGirl(:user_time)
        expect {
         delete :destroy, {:id => user_time.id}
        }.to change(Group, :count).by(-1)
      end
    end  
  end  

 describe "PUT update" do
  
   describe "with valid params"
      before :each do
       it "updates the requested user_time" do
          user_time = FactoryGirl.create(:user_time, :current_time => "22:22:22")
          params[:current_time] = "23:22:23"
          put :update, {:id => user_time.id, :user_time => params}
          user_time.reload
          user_time.current_time.should == "23:22:23"
          assigns(:user_time).should eq(user_time)
        end
      end 
    end   
  describe "with invalid params" do
    before :each do
      it "assigns the user_time as @user_time" do
        user_time = FactoryGirl.create(:user_time, :current_time => "22:22:22")
        params[:current_time] = "22:22:223"
        put :update, {:id => user_time.id, :user_time => params}
        user_time.reload
        user_time.current_time.should == "22:22:22"
        assigns(:user_time).should eq(user_time)
      end 
    end 
  end       
end 