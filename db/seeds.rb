#User.create!(email:'admin@example.com',password:'admin@example.com', password_confirmation:'admin@example.com')
40.times do
    Course.create!([{
      title: Faker::Educator.course_name,
      description: Faker::TvShows::StrangerThings.quote,
      user_id: User.first.id,
      created_at: DateTime.now,
      short_description: Faker::Quote.famous_last_words,
      language: Faker::ProgrammingLanguage.name,
      level: 'Beginner',
      price: Faker::Number.between(from:100, to:1500)
    }])
end
