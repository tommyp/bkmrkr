class Bookmark < ActiveRecord::Base
  include GetTitle

  belongs_to :domain
  acts_as_taggable
  
  attr_accessible :title, :url, :tag_list

  before_validation :check_for_http
  after_validation :fetch_domain
  before_create :get_title

  validates_presence_of :url

  def check_for_http
    self.url.gsub('s:', ':')
    if !self.url.include?('http://') # && !self.url.include?('https://')        
      self.url.prepend('http://')
    end
  end

  def fetch_domain
    new_domain = self.url.scan(/(https?:\/\/[www]?.*\.[a-z]*)/)
    existing_domain = Domain.find_by_url(new_domain)
    if existing_domain
      self.domain = existing_domain
    else
      d = Domain.create(url: new_domain[0][0])
      self.domain = d
    end
  end

  def to_s
    self.title.present? ? self.title : self.url.gsub(/(https?:\/\/[www]?)/, '')
  end

end
