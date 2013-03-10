class Domain < ActiveRecord::Base
  include GetTitle

  attr_accessible :title, :url

  has_many :bookmarks

  before_create :get_title

  def to_s
    self.url.gsub(/(https?:\/\/[www]?)/, '')
  end
end
