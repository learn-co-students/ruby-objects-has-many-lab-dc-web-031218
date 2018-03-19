class Post
	attr_accessor :title, :author

	def initialize(title = nil, author = nil)
		@title = title
		@author = author
		Author.ALL_POSTS << self
		Author.post_count +=1 
	end

	def author_name
		self.author ? self.author.name : nil
	end
end