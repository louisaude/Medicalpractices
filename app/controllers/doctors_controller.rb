class DoctorsController < ApplicationController
  before_action :find_health_care_company, only: %i[index show edit]
  before_action :find_doctor, only: %i[show destroy update edit]

  def index
    @doctors = Doctor.where(health_care_company: @health_care_company)
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.health_care_company_id = params[:health_care_company_id]
    if @doctor.save
      redirect_to health_care_company_doctors_path
    else
      render :new
    end
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to health_care_company_doctors_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to health_care_companies_path if @doctor.destroy
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name)
  end

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def find_health_care_company
    @health_care_company = HealthCareCompany.find(params[:health_care_company_id])
  end
end
