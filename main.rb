require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end

#post = Post.new(:title => "title1", :body => "hello1")

=begin
post = Post.new
post.title="title2"
post.body="hello2"

=end
=begin
post =Post.new do |p|
	p.title="title3"
	p.body="hello3"
end
=end

Post.create(:title => "title4", :body => "hello4")
p Post.all
