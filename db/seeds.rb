# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database..."

Booking.destroy_all
User.destroy_all
Cat.destroy_all

puts "Creating users..."
fakeuser1 = User.create!(email: "user@mail.com", password: "123456", first_name: "fake", last_name: "user", location: "Barcelona, Spain")
fakeuser2 = User.create!(email: "user2@mail.com", password: "123456", first_name: "fake2", last_name: "user2", location: "Madrid, Spain")
fakeuser3 = User.create!(email: "user3@mail.com", password: "123456",  first_name: "fake3", last_name: "user3", location: "Lisbon, Portugal")

puts "Creating cats..."

@cats = [
        { name: "Owen",
          age: 3,
          location: "Barcelona, Spain",
          description: "Very social. He loves to take long walks in the forest. Favorite food is chicken breast.",
          image_url: "https://images.unsplash.com/photo-1503844281047-cf42eade5ca5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80",
          house_cat: false,
          pay: 20,
          user: fakeuser1 },
          { name: "Cookie",
            age: 4,
            location: "Madrid, Spain",
            description: "Tiny but mighty.",
            image_url: "https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80",
            house_cat: true,
            pay: 15,
            user: fakeuser2 },
            { name: "Bart",
              age: 6,
              location: "Barcelona, Spain",
              description: "Introspective. Likes to be pet, but on his turns.",
              image_url: "https://images.unsplash.com/photo-1536589961747-e239b2abbec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
              house_cat: true,
              pay: 10,
              user: fakeuser3 },
              { name: "Humberto",
                age: 10,
                location: "Valencia, Spain",
                description: "To know him is to love him.",
                image_url: "https://images.unsplash.com/photo-1629201917623-9fbb81a80cb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
                house_cat: false,
                pay: 20,
                user: fakeuser1 },
                { name: "Chip and Dale",
                  age: 3,
                  location: "Barcelona, Spain",
                  description: "Brothers.",
                  image_url: "https://images.unsplash.com/photo-1603185781006-fd30db3c847a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTN8fGNhdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                  house_cat: true,
                  pay: 25,
                  user: fakeuser3 },
                  { name: "Cynthia",
                    age: 8,
                    location: "Granada, Spain",
                    description: "She loves napping and photoshoots.",
                    image_url: "https://images.unsplash.com/photo-1520315342629-6ea920342047?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fGNhdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                    house_cat: true,
                    pay: 18,
                    user: fakeuser2 },

]

  @cats.each do |cat|
  cat = Cat.new(cat)
  cat.save!
  puts "Created #{cat.name}"
  end
puts "Finished!"
