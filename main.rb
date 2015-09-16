require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)

class Post < ActiveRecord::Base
end

# p Post.where(:title => "title1",:id => 1)
# p Post.where("title = :title and id = :id" ,{:title=>"title1",:id=>1})#配列で指定もできる
# p Post.where("id>?",2)
p Post.where("body like ?","hello%")