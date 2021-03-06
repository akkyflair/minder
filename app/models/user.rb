class User < ApplicationRecord
  validates :name, {presence: true, uniqueness: true}
  validates :password, {presence: true, uniqueness: true}

  def posts
    return Post.where(user_id: self.id)
  end
  
end
