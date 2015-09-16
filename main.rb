require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "aqlite3",
  "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end

post = Post.new(:title => "title1", :body => "hello1")
post.save

p Post.all
  