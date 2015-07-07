class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    i = find_or_create_by(uid: auth.uid, provider: auth.provider)
    if i.provider == "linkedin"
    	i.url = auth.extra.raw_info.publicProfileUrl
    	i.save
    end
    i
  end

  def display_url
  	case provider
  	when "facebook"
  		"https://facebook.com/profile.php?uid=#{uid}"
  	when "linkedin"
  		url.to_s
    when "twitter"
      "https://twitter.com/intent/user?user_id=#{uid}"
    else
      url.to_s
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