# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  product = Product.new({ name: 'GG4', strain: 'Hybrid', price_per_gram: 80, mood: 'Relaxed', thc_percentage: 20, image_url: 'https://images.leafly.com/flower-images/gg-4.jpg' })
  product.save

  product = Product.new({ name: 'Wedding Cake', strain: 'Hybrid', price_per_gram: 90, mood: 'Happy', thc_percentage: 22, image_url: 'https://images.leafly.com/flower-images/wedding-cake.jpg'})
  product.save

  product = Product.new({ name: 'Gelato', strain: 'Sativa', price_per_gram: 85, mood: 'Euphoric', thc_percentage: 17, image_url: 'https://images.leafly.com/flower-images/gelato.jpg'})
  product.save

  product = Product.new({ name: 'Blue Dream', strain: 'Hybrid', price_per_gram: 65, mood: 'Happy', thc_percentage: 18, image_url: 'https://images.leafly.com/flower-images/gg-4.jpg'})
  product.save

  product = Product.new({ name: 'Purple Punch', strain: 'Indica', price_per_gram: 100, mood: 'Relaxed', thc_percentage: 19, image_url: 'https://images.leafly.com/flower-images/purple-punch.jpg'})
  product.save