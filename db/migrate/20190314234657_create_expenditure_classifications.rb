class CreateExpenditureClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :expenditure_classifications do |t|
      t.string :expenditure_type

      t.timestamps
    end
  end
end
