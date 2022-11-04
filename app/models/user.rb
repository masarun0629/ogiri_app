class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :profile, presence: true
  validates :gender_id, numericality: { other_than: 1,message: "can't be blank" }      
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
end
