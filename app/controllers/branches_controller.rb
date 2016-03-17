class BranchesController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
    @branches = @company.branches
  end

  def new
    @branch = Branch.new
  end

  def create
    @branch = Branch.new branch_params
    @branch.company_id = params[:company_id]
    if @branch.save
      flash[:notice] = "Branch created succesfully"
      redirect_to company_path(current_company.id)
    else
      flash[:alert] = "ALERT Branch not created"
      render 'new'
    end
  end

  def show
    @branch = Branch.find(params[:id])
  end

  def destroy
    @branch = Branch.find(params[:id])
    @branch.destroy
    redirect_to company_path(current_company.id)
  end

  private

  def branch_params
   params.require(:branch).permit(:name, :address, :phone, :schedule, :city, :state, :country, :url)
  end

end
