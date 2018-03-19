require 'pry'
require_relative 'post.rb'

class Author
	attr_accessor :name, :posts

	#Class vars
	@@post_count = 0
	ALL_POSTS = []

	def initialize(name = nil)
		#instance vars
		@name = name
		@posts = []
	end

	#Add post object
	def add_post(post_obj)
		self.posts << post_obj
		post_obj.author = self
		post_obj
	end

	#Create and add new post with title
	def add_post_by_title(title)
		post = Post.new(title, self)
		self.posts << post
		post
	end

	def self.ALL_POSTS
		ALL_POSTS
	end
	
	def self.post_count
		@@post_count
	end
	def self.post_count=(v)
		@@post_count=v
	end

end

