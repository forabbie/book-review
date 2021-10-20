FactoryBot.define do
  factory :book do 
    usr = User.all
    user_id { usr.sample.id }
    author { Faker::Name.name }
    title { Faker::Book.title }
    description { Faker::Lorem.paragraph }
    cat = Category.all
    category_id { cat.sample.id }
    book_img { File.open(Dir.glob(File.join(Rails.root, '/app/assets/images/', '*')).sample) }
  end
end