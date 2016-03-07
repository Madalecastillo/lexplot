class CreateSupportTickets < ActiveRecord::Migration
  def change
    create_table :support_tickets do |t|
      t.references :contract, index: true, foreign_key: true
      t.references :manager, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
