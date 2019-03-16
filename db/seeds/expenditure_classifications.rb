# frozen_string_literal: true

# Tipos de Despesas
puts 'Removing all Expenditure Classifications...'
ExpenditureClassification.destroy_all
puts 'Seeding Expenditure Classifications...'
ExpenditureClassification.create!([{ expenditure_type: 'Pós Re'},
                                   { expenditure_type: 'Celular'},
                                   { expenditure_type: 'Internet'},
                                   { expenditure_type: 'Luz'},
                                   { expenditure_type: 'Gás'},
                                   { expenditure_type: 'Pepe'},
                                   { expenditure_type: 'Mercado'},
                                   { expenditure_type: 'Débito Re'},
                                   { expenditure_type: 'Débito Nico'},
                                   { expenditure_type: 'Crédito Re'},
                                   { expenditure_type: 'Crédito Nico'},
                                   { expenditure_type: 'Moradia'},
                                   { expenditure_type: 'Contador'}])
