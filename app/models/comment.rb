class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # following is probably not needed
  def username
    user ? self.user.username : nil
  end
end
