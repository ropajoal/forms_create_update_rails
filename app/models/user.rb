class User < ApplicationRecord
  validates :username, presence: true, length: { in: 5..15 }
  validates :password, presence: true, length: { in: 8..15 } 
  validates :email, presence:true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Wrong email format" }
end
