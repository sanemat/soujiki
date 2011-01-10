# coding: utf-8
unless ENV['TUMBLR_URL']
  require 'pit'
  config = Pit.get('tumblr', :require => {
    "url" => "your tumblr email:your tumblr password"
  })
  ENV['TUMBLR_URL'] = config['url']
end
