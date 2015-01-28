class AttendencesController < ApplicationController
  before_action :set_attendence, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @attendences = Attendence.all
    respond_with(@attendences)
  end

  def show
    respond_with(@attendence)
  end

  def new
    @attendence = Attendence.new
    respond_with(@attendence)
  end

  def edit
  end

  def create
    @attendence = Attendence.new(attendence_params)
    @attendence.save
    respond_with(@attendence)
  end

  def update
    @attendence.update(attendence_params)
    respond_with(@attendence)
  end

  def destroy
    @attendence.destroy
    respond_with(@attendence)
  end

  private
    def set_attendence
      @attendence = Attendence.find(params[:id])
    end

    def attendence_params
      params.require(:attendence).permit(:signin)
    end
end
