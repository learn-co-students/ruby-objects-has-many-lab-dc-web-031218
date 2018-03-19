require 'pry'

class Post
  attr_accessor :title, :author
  @@all_posts = []

def initialize(title)
  @title = title
  @@all_posts << self
end

def self.all_posts
  @@all_posts
end

def author_name
  if self.author
    self.author.name
  else
    nil
  end
end

end
