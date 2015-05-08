class Blog 	#Defining a new class Blog

	attr_accessor :title, :all_blog_posts, :total_blog_posts 	#Using attribute accessor to SET and GET @title, @all_blog_post, and @total_blog_posts

	def initialize							#Defining the class method initialize for the Blog class -This method occurs when calling Blog.new
		@created_at = Time.now				#Sets the instance variable @created at to the current time using the now method on the Time object (comes with ruby)
		puts "Name Your Blog: "				#Print "Name your blog:" to screen to request user input
		@title = gets.chomp					#Sets the instance variable @title to the input recieved from the user and removes whitespace
		@all_blog_posts = []				#Sets the instance variable @all_blog_posts to an empty array
		@total_blog_posts = 0				#Sets the instance variable @total_blog_posts to 0
	end

	def create_blogpost						#Defining the class method create_blogpost for the Blog class. This method will run when calling Blog.create_blogpost
		new_blog_post = Blog_Post.new 		#Sets the variable new_blog_post to a new instance of the Blog_post class
		puts "Here is my new blog post"		#Print Here is my new blog post" to screen
		@all_blog_posts << new_blog_post 	#Puts the new_blog_post into the @all_blog_posts array
		@total_blog_posts += 1 				#Adds to the count of total blog posts
	end


	def collect_blog_posts 					#Defining the class method collect_blog_posts for the Blog class. This method will run when calling Blog.collect_blog_posts
		return @all_blog_posts 				#Returns the instance variable (an array) @all_blog_posts so it can be accessed outside of the class method
	end

	def publish(all_blog_posts)				#Defining the class method publish for the Blog class. It uses one argument, the previously set array, @all_blog_posts. This method will run when calling Blog.publish
		all_blog_posts.each do |blog_post| 	#Runs an each loop on the all_blog_posts array. On each item of the array it:
			puts blog_post.title 			#Prints the title
			puts blog_post.created_at 		#Prints the time created
			puts blog_post.content 			#Prints the content
		end
	end
end

class Blog_Post 							#Defining the instance method Blog_post
	attr_accessor :title, :created_at, :content #Using attribute accessor to SET and GET @title, @created_at and @content

	def initialize							#Defining the class method initialize for the Blog_post class -This method occurs when calling Blog_post.new
		@created_at = Time.now				#Sets the instance variable @created_at to the current time using the now method on the Time object (comes with ruby)		
		puts "Name your blog post:"			#Print "Name your blog:" to screen to request user input
		@title = gets.chomp					#Sets the instance variable @title to the input recieved from the user and removes whitespace
		puts "Your blog post content:"		#Print "Your blog post content:" to screen to request user input
		@content = gets.chomp				#Sets the instance variable @content to the input recieved from the user and removes whitespace
	end

	def edit_blog_content					#Defining the class method edit_blog_content for the Blog_post class -This method occurs when calling Blog_post.edit_blog_content			
		puts "new blog text:"				#Print "new blog text:" to screen to request user input
		@content = gets.chomp				#Sets the instance variable @content to the input recieved from the user and removes whitespace
	end
end

my_blog = Blog.new
first_blog_post = my_blog.create_blogpost
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)