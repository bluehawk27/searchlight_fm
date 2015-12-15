factory :episode do |f|
  f.title {Faker::Name.title}
  f.description {Faker::hipster.paragraph}
  f.episode_thumbnail {Faker::Avatar.image}
  f.mp3 {}
end