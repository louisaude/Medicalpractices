class HealthCareCompaniesController < ApplicationController

  before_action :find_health_care_company, only: [:show, :destroy, :edit, :update]

  def show
  end

  def new
    @health_care_company = HealthCareCompany.new
  end

  def create
    @health_care_company = HealthCareCompany.new(company_params)
    if @health_care_company.save
      redirect_to health_care_companies_path
    end
  end
 
  def index 
    @health_care_companies = HealthCareCompany.all
  end

  def edit
  end

  def update
    # @health_care_company.update(company_params)
    if @health_care_company.update(company_params)
      redirect_to health_care_company_path
    else
    render :edit
    end
  end
  def destroy
    @health_care_company.destroy
    redirect_to health_care_companies_path
  end

  private
    def company_params 
      params.require(:health_care_company).permit(:name)
    end

    def find_health_care_company
      @health_care_company = HealthCareCompany.find(params[:id])
    end
end
