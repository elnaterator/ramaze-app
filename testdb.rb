require 'sequel'

DB = Sequel.sqlite('db/sqlite.db')

class Post < Sequel::Model
end

post = Post.new
puts post.values
