#バリデーション
#フィールドに対してルールを設ける
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
	validates :title,:presence=>true#titleは無くてはいけない
	validates :body, :length=>{:minimum=>5}#5文字以下ならばセーブされない
end

post=Post.new(:body =>"123")
post.save

if !post.save
	p post.errors.messages
end

p Post.all