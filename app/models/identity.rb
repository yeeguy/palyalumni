class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end

  def url
  	case provider
  	when "facebook"
  		"http://facebook.com/profile.php?uid=#{uid}"
  	else
  		"url_goes_here"
  	end
  end

  def display_name
  	case provider
  	when "facebook"
  		"Facebook"
  	when "linkedin"
  		"LinkedIn"
  	when "twitter"
  		"Twitter"
  	else
  		provider
  	end
  end

end