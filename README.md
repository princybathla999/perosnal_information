# README
Following steps need to be followed to implement Devise with Email functionality .

# Change the production.rb in enviornments
config.action_mailer.default_url_options = { :host => 'url of website', :protocol => 'https'}

# Create Heroku app with addon of SENDGRID

heroku addons:create sendgrid:starter

# Set the sendgrid credentials you created for heroku:

heroku config:set SENDGRID_USERNAME=enterintheusername

heroku config:set SENDGRID_PASSWORD=enterinthepassword

# To display your settings you can type in:

heroku config:get SENDGRID_USERNAME

Open your .zshrc file and enter in the following as well

export SENDGRID_USERNAME=enterintheusername

export SENDGRID_PASSWORD=enterinthepassword

Then open a new terminal window for these to take effect

# If email functionality don't work then add Application.yml in config if not present
Create an application.yml file if it is not present.
Add the credentials of SENDGRID in following format
SENDGRID_USERNAME=abcdefgh
SENDGRID_PASSWORD=abcdefgh

Add this application.yml file in .gitignore as this file has credentials.

# Enjoy Coding