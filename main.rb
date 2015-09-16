require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end


# p Post.first
# p Post.find(3)
# p Post.find_by_title("title2")
p Post.find_by_title_and_id("title2",2)