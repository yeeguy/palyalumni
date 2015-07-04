class InvitationToken < ActiveRecord::Base
	has_many :invitations, :dependent => :destroy
	belongs_to :user, :class_name => "User", :foreign_key => :from

	validates_presence_of :from
	validates_presence_of :token
	validates_uniqueness_of :token

	before_validation :set_token, :if => 'self.new_record?'

	protected

	def set_token
		token = TextStrings::random(16) 
		token = TextStrings::random(16) until InvitationToken.where(:token => token).first.nil?
	end
end
