class AddNameToCompaniesEmployees < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :employees, :name, :string
  end
end
