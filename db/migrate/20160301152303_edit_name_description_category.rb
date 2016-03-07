class EditNameDescriptionCategory < ActiveRecord::Migration
  def change
  	rename_column :categories, :descrition, :description
  end
end
