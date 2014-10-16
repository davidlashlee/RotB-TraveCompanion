# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "user1@mail.m", :password => "rubyruby", :password_confirmation => "rubyruby", :gender => "male", :seeking_gender => "female", :age => 44)
User.create(:email => "user2@mail.m", :password => "rubyruby", :password_confirmation => "rubyruby", :gender => "male", :seeking_gender => "female", :age => 44)
User.create(:email => "user3@mail.m", :password => "rubyruby", :password_confirmation => "rubyruby", :gender => "female", :seeking_gender => "male", :age => 44)
User.create(:email => "user4@mail.m", :password => "rubyruby", :password_confirmation => "rubyruby", :gender => "female", :seeking_gender => "male", :age => 44)
User.create(:email => "user5@mail.m", :password => "rubyruby", :password_confirmation => "rubyruby", :gender => "female", :seeking_gender => "male", :age => 44)

Destination.create(:location => "Bali", :start_date => "tmw", :end_date => "1 week")
Destination.create(:location => "Java", :start_date => "tmw", :end_date => "1 week")

Message.create(:reciever_id => 14, :sender_id => 15, :title => "title", :message_text => "body")
Message.create(:reciever_id => 14, :sender_id => 15, :title => "title2", :message_text => "body2")