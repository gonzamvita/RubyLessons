require 'Date'

class Blog
  attr_accessor :allPosts, :frontPage

  def initialize
    @allPosts = []
    @frontPage = []
  end

  def add_post (post)
    @allPosts << post
  end

  def create_front_page
    @frontPage = @allPosts.each { |post| @frontPage<<post }
  end

  def publish_front_page
    @frontPage.each do |post|
      puts ("#{post.title}\n**************\n#{post.text}\n----------------\n")
    end
  end
end

class Post
  attr_reader :title, :text

  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end
end

class SponsoredPost < Post
  def initialize (title, date, text)
    @sponsoredTitle = "******#{title}******"
    super(@sponsoredTitle, date, text)
  end
end

blog = Blog.new
blog.add_post Post.new("Post title 1", DateTime.now(), "Post 1 text")
blog.add_post SponsoredPost.new("Post title 2", DateTime.now(), "Post 2 text")
blog.add_post Post.new("Post title 3", DateTime.now(), "Post 3 text")

blog.create_front_page
blog.publish_front_page
