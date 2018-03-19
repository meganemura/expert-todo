class User < ApplicationRecord
  has_many :tasks
  has_one :authentication_token
end
