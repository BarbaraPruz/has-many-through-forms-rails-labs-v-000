class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  # following is jsut to avoid view going 2 levels deep...
  def username
     user ? self.user.username : nil
  end
end
