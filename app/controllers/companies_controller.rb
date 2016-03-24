class CompaniesController < ApplicationController

  def show
    @company = Company.find(params[:id])
    @branches = @company.branches
    @rewards = @company.rewards
  end

  def branches_map
    @company = Company.find(params[:company_id])
    @branches = @company.branches
  end

end
