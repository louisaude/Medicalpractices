class HoursController < ApplicationController
  # before_action :find_company, only: [:create]
  before_action :find_doctor, only: [:show]
  before_action :find_hour, only: [:destroy, :show]

  def show
  end

  def index
    @hours = Hour.where(doctor: @doctor)
  end

  def new
    @hour = Hour.new
  end
  
  def create
    @hour = Hour.new(hour_params)
    @hour.health_care_company_id = params[:health_care_company_id]
    @hour.doctor_id = params[:doctor_id]
    if @hour.save
      redirect_to health_care_company_doctors_path
    else
      render 'new'
    end
  end

  def destroy
    @hour.destroy
  end



private

  def hour_params
    params.require(:hour).permit(:weekday, :opening_hour, :opening_minute, :closing_hour, :closing_minute)
  end

  def find_company
    @health_care_company = HealthCareCompany.find(params[:health_care_company_id])
  end
  
 
  def find_hour
    @hour = Hour.find(params[:id])
  end

end
