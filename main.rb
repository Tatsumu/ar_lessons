require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
end

# Post.where(:title => "title5").first_or_create
Post.where(:title => "title6").first_or_create do |p|
	p.body="hello6"
end
p Post.all