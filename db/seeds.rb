def create_user
  User.destroy_all
  user = User.new(email: 'test@email.com')
  user.password = 'password'
  user.password_confirmation = 'password'
  user.save
end

def create_category
  Category.create(name: "Fantasy")
  Category.create(name: "Fiction")
  Category.create(name: "Mystery")
  Category.create(name: "Romance")
  Category.create(name: "Technology")
  Category.create(name: "Thriller")
  Category.create(name: "Tragedy")
end

def create_books
  Book.destroy_all 

  img1 = File.open(File.join(Rails.root, "/app/assets/images/1.jpg"))
  img2 = File.open(File.join(Rails.root, "/app/assets/images/2.jpg"))
  img3 = File.open(File.join(Rails.root, "/app/assets/images/3.jpg"))
  img4 = File.open(File.join(Rails.root, "/app/assets/images/4.jpg"))
  img5 = File.open(File.join(Rails.root, "/app/assets/images/5.jpg"))
  img6 = File.open(File.join(Rails.root, "/app/assets/images/6.jpg"))
  img7 = File.open(File.join(Rails.root, "/app/assets/images/7.jpg"))
  img8 = File.open(File.join(Rails.root, "/app/assets/images/8.jpg"))
  
  Book.create(title: "Old Greek Stories", description: "...", author: "James Baldwin", user_id: 1, category_id: 1, book_img: img1)
  Book.create(title: "Dream Psychology", description: "...", author: "Sigmund Freud", user_id: 1, category_id: 2, book_img: img2)
  Book.create(title: "Pride And Prejudice", description: "...", author: "Jane Austen", user_id: 1, category_id: 4, book_img: img3)
  Book.create(title: "Emma", description: "...", author: "Jane Austen", user_id: 1, category_id: 4, book_img: img4)
  Book.create(title: "The Tempest", description: "...", author: "William Shakespeare", user_id: 1, category_id: 4, book_img: img5)
  Book.create(title: "To Kill A Mockingbird", description: "...", author: "Harper Lee", user_id: 1, category_id: 7, book_img: img6)
  Book.create(title: "1984", description: "...", author: "George Orwell", user_id: 1, category_id: 3, book_img: img7)
  Book.create(title: "Harry Potter and the Philosopher's Stone", description: "...", author: "J.K. Rowling", user_id: 1, category_id: 1, book_img: img8)

end

create_user
create_category
create_books