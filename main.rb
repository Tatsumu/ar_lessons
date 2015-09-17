#アソシエーション
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy#関連するレコードを削除する
end

class Comment < ActiveRecord::Base
	belongs_to :post
end

p Post.all
p Comment.all

Post.find(1).destroy

p Post.all
p Comment.all