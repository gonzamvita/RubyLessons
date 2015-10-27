require 'Date'
require 'Pry'

class Blog
  attr_accessor :timeline, :frontPage

  def initialize
    @timeline = []
    @frontPage = []
  end

  def add_post (post)
    @timeline << post
  end

  def create_front_page
    @frontPage = @timeline.each { |post| @frontPage<<post }
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

blog = Blog.new
blog.add_post Post.new("Post title 1", DateTime.now(), "Post 1 text")
blog.add_post Post.new("Post title 2", DateTime.now(), "Post 2 text")
blog.add_post Post.new("Post title 3", DateTime.now(), "Post 3 text")
binding.pry

blog.create_front_page
blog.publish_front_page
