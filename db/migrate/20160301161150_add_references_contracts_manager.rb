class AddReferencesContractsManager < ActiveRecord::Migration
  def change
  	add_reference :products, :manager, index: true, foreign_key: true
  end
end
