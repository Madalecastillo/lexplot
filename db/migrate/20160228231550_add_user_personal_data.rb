class AddUserPersonalData < ActiveRecord::Migration
  def change
	add_column :users, :name, :string
	add_column :users, :document_id, :string
	add_column :users, :birthdate, :date
	add_column :users, :phone, :string
	add_column :users, :phone_office, :string
	add_column :users, :email_other, :string
	add_column :users, :company_name, :string
	add_column :users, :email_paypal, :string
	
  end
end
