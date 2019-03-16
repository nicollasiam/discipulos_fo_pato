class Rich < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable

  has_many :expenditures
  has_many :incomes
  has_many :plannings

  def my_expenditures
    plannings.map do |planning|
      [planning.expenditure_classification.expenditure_type, planning.expenditure_classification.id]
    end
  end
end
