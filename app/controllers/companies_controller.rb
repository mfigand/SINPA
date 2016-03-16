class CompaniesController < ApplicationController

  def show
    @company = Company.find(params[:id])
    @branches = @company.branches
  end

end
