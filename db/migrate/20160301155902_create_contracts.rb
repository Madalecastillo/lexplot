class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :code_contract
      t.date :date_exp
      t.date :date_act 
      t.float :price     
      t.string :paynumber
      t.boolean :status
      t.string :coments
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true      
      
      t.timestamps null: false
    end
  end
end
