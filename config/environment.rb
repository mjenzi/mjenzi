# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

SMTP_CRED = YAML.load_file(Rails.root.join("config/environment_variable.yml"))[Rails.env]
ActionMailer::Base.smtp_settings = {
    :port           => SMTP_CRED['PORT'],
    :address        => SMTP_CRED['SERVER'],
    :user_name      => SMTP_CRED['LOGIN'],
    :password       => SMTP_CRED['PASSWORD'],
    :domain         => SMTP_CRED['DOMAIN'],
    :authentication => :plain,
    :enable_starttls_auto=> true
}