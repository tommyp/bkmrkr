# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bbc           = Bookmark.create(url: 'http://bbc.co.uk')
bbc.tag_list  = 'news, tv, uk'
bbc.save

guardian           = Bookmark.create(url: 'http://guardian.co.uk')
guardian.tag_list  = 'news, media, uk'
guardian.save

rails           = Bookmark.create(url: 'http://rubyonrails.org')
rails.tag_list  = 'dev, ruby, mvc'
rails.save

motion           = Bookmark.create(url: 'http://www.rubymotion.com/')
motion.tag_list  = 'ruby, ios, apple'
motion.save

hn           = Bookmark.create(url: 'http://news.ycombinator.com/')
hn.tag_list  = 'code, dev, news'
hn.save

bourbon           = Bookmark.create(url: 'http://bourbon.io/')
bourbon.tag_list  = 'css, design, web'
bourbon.save

github           = Bookmark.create(url: 'https://github.com/')
github.tag_list  = 'web, dev, code'
github.save

jquery           = Bookmark.create(url: 'http://jquery.com/')
jquery.tag_list  = 'js, dev, web'
jquery.save

backbone           = Bookmark.create(url: 'http://backbonejs.org/')
backbone.tag_list  = 'js, dev, mvc'
backbone.save

bootstrap           = Bookmark.create(url: 'http://twitter.github.com/bootstrap/')
bootstrap.tag_list  = 'design, css, web'
bootstrap.save

scss           = Bookmark.create(url: 'http://sass-lang.com/')
scss.tag_list  = 'css, design, web'
scss.save