# frozen_string_literal: true

# Usuários
puts 'Removing all Plannings...'
Planning.destroy_all
puts 'Seeding Plannings...'

Rich.all.each do |rich|
  ExpenditureClassification.all.each do |ec|
    next if rand(10) < 5

    Planning.create!([{ rich: rich, expenditure_classification: ec, value: rand(0..500) }])
  end
end
