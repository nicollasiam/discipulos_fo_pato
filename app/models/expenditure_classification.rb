class ExpenditureClassification < ApplicationRecord
  def self.types_for_combo
    all.map do |type|
      [type.expenditure_type, type.id ]
    end.sort
  end
end
