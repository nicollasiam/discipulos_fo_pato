# frozen_string_literal: true

# Usuários
puts 'Removing all Riches...'
Rich.destroy_all
puts 'Seeding Riches...'
Rich.create!([{ email: 'admin@admin.com', password: '123456', password_confirmation: '123456' },
              { email: 'nicao@nicao.com', password: '123456', password_confirmation: '123456' }])
