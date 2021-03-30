class DoctorsController < ApplicationController
  before_action :find_health_care_company
  before_action :find_doctor, only: [:show, :edit, :destroy]


  def new
    @doctor = Doctor.new
  end

  def update 
    @doctor = Doctor.find(params[:id])

    if @doctor.update(doctor_params)
      redirect_to health_care_companies_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @doctor.destroy
    redirect_to health_care_companies_path
  end

  def index
    @doctors = Doctor.where(health_care_company: @health_care_company)
  end

  def create
      @doctor = Doctor.new(doctor_params)
      @doctor.health_care_company_id = params[:health_care_company_id]
      if @doctor.save
        redirect_to health_care_companies_path
      end
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
