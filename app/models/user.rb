class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :recievers, through: :messages
  has_many :senders, through: :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
  mount_uploader :image, ImageUploader
end
