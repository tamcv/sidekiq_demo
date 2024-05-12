FactoryBot.define do
  factory :transaction do
    amount { Faker::Number.decimal(l_digits: 2) }
    description { Faker::Lorem.sentence }
    transaction_type { %w[deposit withdrawal].sample }
    user
  end
end
