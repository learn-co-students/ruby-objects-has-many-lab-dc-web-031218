class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(title)
    # takes in an argument of a post title, creates a new post with it and associates the post and author
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  # is a class method that returns the total number of posts associated to all existing authors
  def self.post_count
    @@post_count = Post.all_posts.count
    @@post_count
  end

end
