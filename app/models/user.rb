class User < ApplicationRecord
  before_action :authenticate_user!
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  :omniauthable, :omniauth_providers => [:google_oauth2, :github, :facebook, :linkedin]#, :confirmable, :timeoutable,  :confirm_within => 10.minute

  belongs_to :group
  has_many :messages
  has_and_belongs_to_many :events, :join_table => "events_users"
  belongs_to :chat
  has_many :authentications

  # In order to activate the ability model properly.
  def role?(role)
    self.role.to_s == role.to_s
  end

  def self.find_for_oauth(kind, auth, signed_in_user=nil)

    case kind
    when "google", "github", "facebook", "linkedin"
      if user = signed_in_user || User.find_by_email(auth.info.email)
        user.name = auth.info.name if user.name.blank?
        user.save
      elsif auth_record = Authentication.find_by_provider_and_uid(auth.provider, auth.uid)
        return auth_record.user
      else
        user = User.create do |user|
          user.name = auth.info.name
          user.email = auth.info.email
          user.password = Devise.friendly_token[0,20]
        end
      end
    when "other"
      raise NotImplementedError, "why would anybody want this!"
    end

    if user.persisted?
      user.authentications.where(auth.slice(:provider, :uid)).first_or_create!
    end

    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if auth = session["devise.google_data"] || session["devise.github_data"] || session["devise.facebook_data"] || session["devise.linkedin_data"]
        user.name = auth.info.name if user.name.blank?
        user.email = auth.info.email if user.email.blank?
      end
    end
  end
end
