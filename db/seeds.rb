# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "olifen",
	email: "oli@fen.com",
	first_name: "oli",
	last_name: "fen",
	location: "wimbledon",
  password: "password",
  password_confirmation: "password"
},{
  username: "odotfenz",
	email: "odot@fenz.com",
	first_name: "odot",
	last_name: "fenz",
	location: "balham",
  password: "password",
  password_confirmation: "password"
}])

Venue.create!([{
  name: "Furzedown Recreation Centre",
  address: "Ramsdale Rd, London SW17 9BP"
},{
  name: "Chestnut Grove School",
  address: "45 Chestnut Grove, London SW12 8JZ"
},{
  name: "Aspire Centre",
  address: "337 Merton Rd, London SW18 5JU"
}])

# Game.create!([{
#
# }])


# t.string   "name"
# t.integer  "venue_id"
# t.integer  "user_id"
# t.integer  "no_of_places"
# t.time     "start_time"
# t.time     "end_time"
# t.date     "date"
