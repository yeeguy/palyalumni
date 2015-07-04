class Invitation < ActiveRecord::Base
	belongs_to :invitation_token
end
