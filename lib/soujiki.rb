# coding: utf-8
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
