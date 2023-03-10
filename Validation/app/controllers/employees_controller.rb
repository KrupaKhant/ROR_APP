class EmployeesController < ApplicationController
    def index
      @employees = Employee.all
    end

    def show
      @employee = Employee.find(params[:id])
    end
  
    def new
      @employee = Employee.new
    end
  
    def create
      @employee = Employee.new(employee_params)
  
      if @employee.save
        redirect_to @employee
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
      def employee_params
        params.require(:employee).permit(:firstname, :lastname, :email, :username, :password, :phonenumber, :zipcode, :planstartdate, :planenddate)
      end

    
  end
  