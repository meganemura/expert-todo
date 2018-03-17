class User < ApplicationRecord
  has_many :link_authentications
  has_many :tasks
end
