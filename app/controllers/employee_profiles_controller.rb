class EmployeeProfilesController < ApplicationController

  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
  @employee_profiles = EmployeeProfilesController.all
  end

  def new
    @employee_profile = EmployeeProfile.new
  end

  def create
    @employee_profile = EmployeeProfile.new(employee_params)
    @employee_profile.user_id = current_user
    respond_to do |format|
      if @employee_profile.save
        format.html { redirect_to root_path, notice: '@employee_profile was successfully created.' }
        format.json { render :show, status: :created, location: @employee_profile }
      else
        format.html { render :new }
        format.json { render json: @employee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def show
  end

  def destroy
  end

  def update
      respond_to do |format|
      if @employee_profile.update_attributes(employee_params)
        format.html { redirect_to root_path, notice: '@employee_profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_profile }
      else
        format.html { render :edit }
        format.json { render json: @employee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def set_employee
    @employee_profile = EmployeeProfile.find(params[:id])
  end

  def employee_params
    params.require(:employee_profile).permit(:first_name,:last_name,:dob,:father_name,:mother_name,:sin,:address_1,:address_2,:street,:city,:province,:country,:telephone,:postal_code,:nationality,:user_id)
  end
end
