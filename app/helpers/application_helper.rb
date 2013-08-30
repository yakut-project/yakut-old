module ApplicationHelper

  require 'digest/md5'

  def gravatar_tag(email, options = {})
    size = (options.delete(:size) or "80")
    default = (options.delete(:default) or "identicon")
    hash = Digest::MD5.hexdigest(email.downcase)
    image_tag "http://www.gravatar.com/avatar/#{hash}/?s=#{size}&d=#{default}", options
  end

end
