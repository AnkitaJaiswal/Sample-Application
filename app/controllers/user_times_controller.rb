class UserTimesController < ApplicationController
  before_action :set_user_time, only: [:show, :edit, :update, :destroy]

  # GET /user_times
  # GET /user_times.json
  def index
    @user_times = UserTime.all
  end

  # GET /user_times/1
  # GET /user_times/1.json
  def show
  end

  # GET /user_times/new
  def new
    @user_time = UserTime.new
  end

  # GET /user_times/1/edit
  def edit
  end

  # POST /user_times
  # POST /user_times.json
  def create
    @user_time = UserTime.new(user_time_params)

    respond_to do |format|
      if @user_time.save
        format.html { redirect_to @user_time, notice: 'User time was successfully created.' }
        format.json { render :show, status: :created, location: @user_time }
      else
        format.html { render :new }
        format.json { render json: @user_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_times/1
  # PATCH/PUT /user_times/1.json
  def update
    respond_to do |format|
      if @user_time.update(user_time_params)
        format.html { redirect_to @user_time, notice: 'User time was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_time }
      else
        format.html { render :edit }
        format.json { render json: @user_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_times/1
  # DELETE /user_times/1.json
  def destroy
    @user_time.destroy
    respond_to do |format|
      format.html { redirect_to user_times_url, notice: 'User time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_time
      @user_time = UserTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_time_params
      params.require(:user_time).permit(:current_time)
    end
end
