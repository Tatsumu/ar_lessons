require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
	scope :top3, order("created_at").limit(3)

end



# p Post.where(:id=> 1...3)
# p Post.where(:id=> [1,3])
# p Post.order("id desc").limit(3)
p Post.top3