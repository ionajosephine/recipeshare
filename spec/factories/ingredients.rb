FactoryBot.define do
  factory :ingredient do
    sequence(:name) { |number| "Ingredient #{number}" }
    recipe
  end
end
