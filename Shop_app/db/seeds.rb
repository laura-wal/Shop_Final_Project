# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Type.delete_all
Tag.delete_all
Product.delete_all
Order.delete_all


u1 = User.create(name: 'laura', password: 'testy')
u2 = User.create(name: 'anne', password: 'test2')

# creating the categories
cat1 = Type.create(name: 'Tough Things')
cat2 = Type.create(name: 'Natural Things')
cat3 = Type.create(name: 'Soft Things')
cat4 = Type.create(name: 'Play Things')


# creating the products
p1 = Product.create!(name: 'Cone Face', designer: 'me', price: 41, img: Rails.root.join("app/assets/images/cone_face_1.jpg").open)
p2 = Product.create(name: 'Green Hair', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/grey_pot_1.jpg").open)
p3 = Product.create(name: 'Mushroom Face', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/mushroom_face_1.jpg").open)

# puttting the products into the catogories
cat1.products << p1
cat1.products << p2
cat4.products << p3

# creating the tags
t1 = Tag.create(name: 'glazed')
t2 = Tag.create(name: 'fun')
t3 = Tag.create(name: 'bronze')
t4 = Tag.create(name: 'ceramics')
t5 = Tag.create(name: 'pink')

# adding a tag to products
p1.tags << t1
p1.tags << t2
p1.tags << t5
p1.tags << t4
p2.tags << t3
p2.tags << t2
p3.tags << t1
p3.tags << t4




