Devise.setup do |config|
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage  = [:http_auth]
  config.stretches             = Rails.env.test? ? 1 : 10
  config.reconfirmable         = true
  config.password_length       = 6..128
  config.reset_password_within = 6.hours
  config.sign_out_via          = :delete
  config.secret_key            = '42d35f7eb1e57e4438044903baef61d54ff9a992819230d2739fc2f1b4f40a2f11ec8108bdf0c6cfda9eb41132ae479e2c416394a739e0df9cf9bdafecc8d0cb'
end
