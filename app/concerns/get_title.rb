module GetTitle
  require 'nokogiri'
  require 'open-uri'

  module InstanceMethods

    def get_title
      unless Rails.env.test?
        begin
          # This should be in a delayed job, but Nokogiri doesn't like trying to connect in the job for some reason
          page = Nokogiri::HTML(open(self.url).read)
          self.title = page.title.strip
        rescue SocketError
          puts "Nokogiri couldn't connect."
        end
      end
    end

  end

  def self.included(base)
    base.send :include, InstanceMethods
  end

end