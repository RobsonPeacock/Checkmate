FactoryBot.define do
  factory :todo do
    sequence(:content) { |n| "Task #{n + 1}" }
    list
  end
end