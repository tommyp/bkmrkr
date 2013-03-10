class GetTitleJob 
  attr_accessor :object_id, :object_class

  require 'nokogiri'
  require 'open-uri'
  

  def initialize(object_id, object_class)
    @object = object_class.send :find, object_id
  end

  def perform
    body = open(@object.url).read
    page = Nokogiri::HTML(body)
    @object.update_attribute(:title, page.title)
  end
  
end