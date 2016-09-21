#publish method to output all posts to Terminal - class or instance? 

class Blog 
#this parent class will keep track of how many posts created, and what to do with them (save in array or hash)
#push new ones into array
#class variable to count, method to count each new post
	@@all_posts = []
	@@num_posts = 0

	def self.all 
		@@all_posts
	end

	def self.add(thing)
		@@all_posts << thing
		@@num_posts += 1
	end 

	def self.publish 
		@@all_posts.each do |post| 
			puts "Title:\n #{post.title}"
			puts "Author:\n #{post.author}"
			puts "Body:\n #{post.content}"
			puts "Publish Date:\n #{post.created_at}"
		end
	end

end

class Post < Blog
#this class should set title, content, publish date, author for each new post (thus, instance variables)
	def self.create
		post = new
		puts "Please enter name of blog post:"
		post.title = gets.chomp
		puts "Who is the author?"
		post.author = gets.chomp
		puts "Please enter post content:"
		post.content = gets.chomp
		post.created_at = Time.now
		post.save
		puts "Do you want to create another post? [y/n]"
		create if gets.chomp.downcase == 'y'
	end

	def title
		@title
	end

	def title= (title)
		@title = title 
	end 

	def author 
		@author
	end

	def author= (author)
		@author = author
	end

	def created_at
		@created_at
	end 

	def created_at= (created_at)
		@created_at = created_at
	end

	def content 
		@content
	end

	def content= (content)
		@content = content
	end 

	def save 
		Post.add(self)
	end

end

Post.create
all_posts = Post.all 
puts all_posts.inspect 
Post.publish 