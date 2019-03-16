# frozen_string_literal: true

# You can seed any table separately
# By passing the ENV variable seed.
# E.g.: rails db:seed seed=homologations,relationship_items

require 'faker'

# Don't send emails when seeding
ActionMailer::Base.delivery_method = :smtp

if ENV['seed']
  files = ENV['seed'].split(',')
  files.each do |file|
    load File.join(Rails.root, 'db', 'seeds', "#{file}.rb")
  end
else
  %w[riches expenditure_classifications].each do |file|
    load File.join(Rails.root, 'db', 'seeds', "#{file}.rb")
  end
end

# After seed, make letter opener alive again
ActionMailer::Base.delivery_method = :letter_opener
