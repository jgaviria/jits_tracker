class CheckinsController < ApplicationController
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @checkins = Checkin.all
    respond_with(@checkins)
  end

  def show
    respond_with(@checkin)
  end

  def new
    @checkin = Checkin.new
    respond_with(@checkin)

  end

  def edit
  end

  def create
    @checkin = Checkin.new(checkin_params)

    respond_to do |format|
      if @checkin.save
        format.html { redirect_to "http://localhost:3000/signin", notice: 'Student was successfully checked-in.' }
        format.json { render :show, status: :created, location: @checkin}
      else
        format.html { render :new }
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @checkin.update(checkin_params)
    respond_with(@checkin)
  end

  def destroy
    @checkin.destroy
    respond_with(@checkin)
  end

  private
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    def checkin_params
      params.require(:checkin).permit(:student_id, :day)
    end
end
