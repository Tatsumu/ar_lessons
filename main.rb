#レコードの更新
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./blog.db"
)


class Post < ActiveRecord::Base
end

post = Post.find(1)#idが1のものを参照

=begin
post.title="(new)title1"#titleを書き換え
post.save
=end

# post.update_attribute(:title,"(new2)title1")#titleを(new2)title1に書き換え
# post.update_attributes(:title=>"nnn",:body=>"hhh")#複数の書き換え
Post.where(:id=>1...2).update_all(:title=>"nnn2",:body=>"hhh2")  

p Post.first

