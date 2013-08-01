# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

#gain access to MD5 hashes for gravatar use
#fix found here: http://stackoverflow.com/questions/770876/how-do-i-add-gravatar-identicons-into-ruby-on-rails
		# create an MD5 hash from the user's email address which is then used in a GET request to the gravatar server
require 'digest'
