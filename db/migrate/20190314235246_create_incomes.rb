class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.float :value
      t.string :information
      t.string :reference_month
      t.string :reference_year
      t.references :rich, foreign_key: true

      t.timestamps
    end
  end
end
