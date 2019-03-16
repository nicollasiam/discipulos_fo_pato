class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.float :value
      t.references :rich, foreign_key: true
      t.references :expenditure_classification, foreign_key: true

      t.timestamps
    end
  end
end
