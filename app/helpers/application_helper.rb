module ApplicationHelper

  require 'digest/md5'

  def gravatar_tag(email, size=80, default='identicon')
    hash = Digest::MD5.hexdigest(email.downcase)
    image_tag "http://www.gravatar.com/avatar/#{hash}/?s=#{size}&d=#{default}"
  end

end
