class CreateExpenditures < ActiveRecord::Migration[5.2]
  def change
    create_table :expenditures do |t|
      t.float :value
      t.date :payment_date
      t.string :reference_month
      t.string :reference_year
      t.string :information
      t.boolean :planned
      t.references :rich, foreign_key: true
      t.references :expenditure_classification, foreign_key: true

      t.timestamps
    end
  end
end
