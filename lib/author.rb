require 'pry'

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count = Post.all_posts.count
    @@post_count
  end

  def posts
    @posts
  end

end
