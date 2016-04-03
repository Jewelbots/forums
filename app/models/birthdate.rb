class Birthdate
  include ActiveModel::Serialization
  include StatsCacheable

  attr_accessor :moderators,
                :admins

  def self.stats_cache_key
    'about-stats'
  end

  def version
    Discourse::VERSION::STRING
  end

  def https
    SiteSetting.use_https
  end

  def title
    SiteSetting.title
  end

  def locale
    SiteSetting.default_locale
  end

  def description
    SiteSetting.site_description
  end

end
