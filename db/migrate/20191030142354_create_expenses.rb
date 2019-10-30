class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :name
      t.decimal :amount
      t.references :store, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
