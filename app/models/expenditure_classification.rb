class ExpenditureClassification < ApplicationRecord
  has_many :expenditures
  has_many :plannings

  def self.types_for_combo
    all.map do |type|
      [type.expenditure_type, type.id ]
    end.sort
  end
end
