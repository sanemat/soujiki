# coding: utf-8
unless ENV['TUMBLR_URL']
  require 'pit'
  ENV['TUMBLR_URL'] = Pit.get('tumblr')['url']
end
