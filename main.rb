#アソシエーション
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
	has_many :comments#複数のコメントを持つ
end

class Comment < ActiveRecord::Base
	belongs_to :post
end

post = Post.find(1)#id１を参照
post.comments.each do |comment|
	p comment.body
end