class Expenditure < ApplicationRecord
  belongs_to :rich
  belongs_to :expenditure_classification
end
