# coding: utf-8
require 'tumblr'
if !ENV['TUMBLR_MAIL'] or !ENV['TUMBLR_PASSWORD']
  require 'pit'
  ENV['EDITOR'] ||= 'vim'
  config = Pit.get('tumblr', :require => {
    'mail' => 'your tumblr email',
    'password' => 'your tumblr password'
  })
  ENV['TUMBLR_MAIL'] = config['mail']
  ENV['TUMBLR_PASSWORD'] = config['password']
end
publisher = {}
publisher = {
  :email => ENV['TUMBLR_MAIL'],
  :password => ENV['TUMBLR_PASSWORD'],
}
quote = Tumblr::Post::Quote.new('quoted')
quote.source = 'http://example.com'
Tumblr.execute(publisher, quote)
