Category.create(name: 'Mens', position: 1)
Category.create(name: 'Mens Bottoms', position: 2)
Category.create(name: 'Mens Shirts', position: 3)
Category.create(name: 'Mens Jackets', position: 4)
Category.create(name: 'Mens Shoes', position: 5)
Category.create(name: 'Womens', position: 6)
Category.create(name: 'Womens Dresses', position: 7)
Category.create(name: 'Womens Accessories', position: 8)
Category.create(name: 'Womens Bags & Purses', position: 9)
Category.create(name: 'Womens Shoes', position: 10)
Category.create(name: 'Boys', position: 11)
Category.create(name: 'Girls', position: 12)
Category.create(name: 'Babies & Toddlers', position: 13)
Category.create(name: 'Kids Shoes', position: 14)

Store.create(name: 'Trends', description: 'Trendy Clothes for Trendy People', image_file_name: 'trends.jpeg', user_id: 1)
Store.create(name: 'Gasp Jeans', description: "The Word's Most Pretentious Jeans", image_file_name: 'gasp.gif', user_id: 2)
Store.create(name: 'Inappropriate Cultural Appropriation', description: "Pay a Lot of Money to Pretend Like You're Poor!", image_file_name: 'approp.jpeg', user_id: 3)

item =Item.create([
  {name: 'Himalayan Hoodie',   description: 'A stylish top layer to keep you as warm as a Sherpa', price: 30.00, status: 'active', category_ids: [6, ], image_file_name: "HimalayanHoodie.jpg", store_id: 3},
  {name: 'Urban Sombrero', description: 'A modern nod to old Mexico', price: 45.00, status: 'active', category_ids: [1,2,5], image_file_name: "urbansombrero.jpg", store_id: 3},
  {name: 'Teddy Bear Jacket', description: 'Cold weather wear that you can cuddle up with', price: 55.00, status: 'active', category_ids: [2, 4], image_file_name: "teddybearjacket.jpg", store_id: 1},
  {name: 'Metro Duster', description: 'Old west style for a modern world', price: 27.00, status: 'active', category_ids: [1,4], image_file_name: "metro_duster.jpg", store_id: 1},
  {name: 'Fur Neck Wrap', description: 'Made from the fur of snowshoe hares', price: 28.00, status: 'active', category_ids: [1,2,6], image_file_name: "rabbit_fur.jpg", store_id: 2},
])

User.create(full_name: 'Rachel Warbelow', email_address: 'demo+rachel@jumpstartlab.com', password: 'password', screen_name: '', role: 'user')
User.create(full_name: 'Jeff', email_address: 'demo+jeff@jumpstartlab.com', password: 'password', screen_name: 'j3', role: 'user')
User.create(full_name: 'Jorge Tellez', email_address: 'demo+jorge@jumpstartlab.com', password: 'password', screen_name: 'novohispano', role: 'user')
User.create(full_name: 'Josh Cheek', email_address: 'demo+josh@jumpstartlab.com', password: 'password', screen_name: 'josh', role: 'admin')

order1  = Order.create(status: 'ordered',     user_id: 4, store_id: 1)
order2  = Order.create(status: 'ordered',     user_id: 4, store_id: 1)
order3  = Order.create(status: 'canceled',    user_id: 4, store_id: 1)
order4  = Order.create(status: 'canceled',    user_id: 4, store_id: 1)
order5  = Order.create(status: 'paid',        user_id: 4, store_id: 2)
order6  = Order.create(status: 'paid',        user_id: 4, store_id: 2)
order7  = Order.create(status: 'completed',   user_id: 4, store_id: 2)
order8  = Order.create(status: 'completed',   user_id: 4, store_id: 3)
order9  = Order.create(status: 'completed',   user_id: 4, store_id: 3)
order10 = Order.create(status: 'completed',   user_id: 4, store_id: 3)

order1.order_items.create(item_id:  1, quantity: 2)
order2.order_items.create(item_id:  1, quantity: 2)
order3.order_items.create(item_id:  1, quantity: 2)
order4.order_items.create(item_id:  1, quantity: 2)
order5.order_items.create(item_id:  1, quantity: 2)
order6.order_items.create(item_id:  1, quantity: 2)
order7.order_items.create(item_id:  1, quantity: 2)
order8.order_items.create(item_id:  1, quantity: 2)
order9.order_items.create(item_id:  1, quantity: 2)
order10.order_items.create(item_id: 1, quantity: 2)
