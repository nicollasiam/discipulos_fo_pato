# frozen_string_literal: true

# Usuários
puts 'Removing all Plannings...'
Planning.destroy_all
puts 'Seeding Plannings...'

ExpenditureClassification.all.each do |ec|
  next if rand(10) < 5

  Planning.create!([{ rich: Rich.last, expenditure_classification: ec, value: rand(0..500) }])
end
