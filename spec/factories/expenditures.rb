FactoryBot.define do
  factory :expenditure do
    value 1.5
    payment_date "2019-03-14"
    reference_month "MyString"
    reference_year "MyString"
    information "MyString"
    planned false
    rich nil
    expenditure_classification nil
  end
end
