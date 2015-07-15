# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
# Type.delete_all
Tag.delete_all
Product.delete_all
Order.delete_all
OrderProduct.delete_all

u1 = User.create(email: 'laura@gffd', password: 'testy')
u2 = User.create(email: 'anne@ddd', password: 'test2')

# # creating the categories
# cat1 = Type.create(name: 'Tough Things')
# cat2 = Type.create(name: 'Natural Things')
# cat3 = Type.create(name: 'Soft Things')
# cat4 = Type.create(name: 'Play Things')


# creating the products
p1 = Product.create!(name: 'Fragile 3', designer: 'me', price: 41, img: Rails.root.join("app/assets/images/fragile_3.jpg").open)
p2 = Product.create(name: 'Fragile 2', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/fragile_2.jpg").open)
p3 = Product.create(name: 'Fragile 1', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/fragile_1.jpg").open)
p4 = Product.create!(name: 'Fragile 4', designer: 'Jim', price: 41.00, img: Rails.root.join("app/assets/images/fragile_4.jpg").open)
p5 = Product.create(name: 'Fragile 5', designer: 'Anna', price: 10, img: Rails.root.join("app/assets/images/fragile_5.jpg").open)

p6 = Product.create(name: 'Home 1', designer: 'mini', price: 40, img: Rails.root.join("app/assets/images/home_1.jpg").open)
p7 = Product.create!(name: 'Home 2', designer: 'nick', price: 71, img: Rails.root.join("app/assets/images/home_2.jpg").open)
p8 = Product.create(name: 'Home 3', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/home_3.jpg").open)
p9 = Product.create(name: 'Home 4', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/home_4.jpg").open)
p12 = Product.create!(name: 'Home 5', designer: 'me', price: 41, img: Rails.root.join("app/assets/images/home_5.jpg").open)

p11 = Product.create(name: 'light 1', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/light_1.jpg").open)
p13 = Product.create(name: 'light 2', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/light_2.jpg").open)
p15 = Product.create(name: 'light 3', designer: 'Anna', price: 10, img: Rails.root.join("app/assets/images/light_3.jpg").open)
p16 = Product.create(name: 'light 4', designer: 'mini', price: 40, img: Rails.root.join("app/assets/images/light_4.jpg").open)
p17 = Product.create!(name: 'light 5', designer: 'nick', price: 71, img: Rails.root.join("app/assets/images/light_5.jpg").open)

p18 = Product.create(name: 'name 1', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/name_1.jpg").open)
p19 = Product.create(name: 'name 2', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/name_2.jpg").open)
p22 = Product.create!(name: 'name 3', designer: 'me', price: 41, img: Rails.root.join("app/assets/images/name_3.jpg").open)
p21 = Product.create(name: 'name 4', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/name_4.jpg").open)
p23 = Product.create(name: 'name 5', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/name_5.jpg").open)

p24 = Product.create(name: 'Paper 1', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/paper_1.jpg").open)
p25 = Product.create(name: 'Paper 2', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/paper_2.jpg").open)
p26 = Product.create(name: 'Paper 3', designer: 'Anna', price: 10, img: Rails.root.join("app/assets/images/paper_3.jpg").open)
p27 = Product.create(name: 'Paper 4', designer: 'mini', price: 40, img: Rails.root.join("app/assets/images/paper_4.jpg").open)
p28 = Product.create!(name: 'Paper 5', designer: 'nick', price: 71, img: Rails.root.join("app/assets/images/paper_5.jpg").open)

p58 = Product.create(name: 'Soft 1', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/soft_1.jpg").open)
p29 = Product.create(name: 'Soft 2', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/soft_2.jpg").open)
p31 = Product.create!(name: 'Soft 3', designer: 'me', price: 41, img: Rails.root.join("app/assets/images/soft_3.jpg").open)
p32 = Product.create(name: 'Soft 4', designer: 'Anne', price: 310, img: Rails.root.join("app/assets/images/soft_4.jpg").open)
p33 = Product.create(name: 'Soft 5', designer: 'me', price: 40, img: Rails.root.join("app/assets/images/soft_5.jpg").open)







# # puttting the products into the catogories
# cat1.products << p1
# cat1.products << p2
# cat4.products << p3
# cat1.products << p4
# cat1.products << p5
# cat4.products << p6
# cat1.products << p7
# cat1.products << p8
# cat4.products << p9
# cat1.products << p11
# cat1.products << p12
# cat4.products << p13

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




