class HoursController < ApplicationController
  before_action :find_hour, only: %i[destroy show]

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
    @health_care_company = HealthCareCompany.find(params[:health_care_company_id])
    @doctor = Doctor.find(params[:doctor_id])
    @hour.destroy
    redirect_to health_care_company_doctor_path(@health_care_company, @doctor)
  end

  private

  def hour_params
    params.require(:hour).permit(:weekday, :opening_hour, :opening_minute, :closing_hour, :closing_minute)
  end

  def find_hour
    @hour = Hour.find(params[:id])
  end
end
