class ProjectsController < ApplicationController
    
  before_action :set_project, only: [:show, :destroy]
  before_action :set_company, only: [:index, :new, :create, :destroy]
      
  def index
    @projects = @company.projects
  end
      
  def show
  end
      
  def new
    @project = @company.projects.build
  end
      
  def create
    @project = @company.projects.build(project_params)
    @project.user_id = session[:user_id]
    if @project.save
      redirect_to companies_path, notice: 'Project was successfully created.'
    else
      render :new
    end
  end
      
  def destroy
    @project.destroy
    redirect_to company_projects_url(@company), notice: 'Project was successfully destroyed.'
  end
      
  private
    def set_company
      @company = Company.find(params[:company_id])
    end
      
    def set_project
      @project = @company.projects.find(params[:id])
    end
      
    def project_params
      params.require(:project).permit(:name, :description, :company_id)
    end
end
