module AdorableAvatars
  mattr_accessor :default_size

  @@default_size = 150

  def adorable_avatar(digest, options = {})
    size = options.delete(:size) || default_size

    image_tag adorable_avatar_url(digest, size), **options
  end

  def adorable_avatar_url(digest, size)
    "https://api.adorable.io/avatars/#{size}/#{digest}.png"
  end

  def self.setup
    yield self if block_given?
  end
end

ActionView::Base.send :include, AdorableAvatars
