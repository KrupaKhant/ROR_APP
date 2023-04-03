class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :destroy]

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def destroy
    @company.destroy
    redirect_to companies_url, notice: 'Company was successfully deleted.'
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:company_name)
    end 
end
