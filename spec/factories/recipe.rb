FactoryBot.define do
  factory :recipe do
    title { 'dummy title' }
    association :photo, factory: :photo
    calories { 'dummy calories' }
    description { '*Grilled Cheese 101*: Usebrown __grilled cheese__. Cook, relax, and enjoy!' }
    association :tags, factory: :tag
  end
end

