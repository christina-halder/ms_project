FactoryBot.define do
  factory :contentful_user, class: 'ContentfulUser' do

    trait :active do
      sequence(:name) { |n| "contentful_user_#{n}" }
      space_id { 'dummy-id' }
      access_token { 'dummy-token' }
      environment_id { 'dummy-environment' }
    end

  trait :marley_spoon do
      name { 'Marley Spoon' }
      space_id { 'dummy-id' }
      access_token { 'dummy-token' }
      environment_id { 'dummy-environment' }
    end

  end
end
