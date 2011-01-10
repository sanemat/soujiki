# coding: utf-8
ENV['TUMBLR_URL'] ||= do
  require 'pit'
  Pit.get('tumblr')['url']
end
