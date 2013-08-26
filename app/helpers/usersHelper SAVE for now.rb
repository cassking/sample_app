module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.

	def gravatar_for(user, options = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/#{gravatar_id}"
		# image_tag(gravatar_url, alt: user.name, class: "gravatar")
		#fix found here: http://stackoverflow.com/questions/770876/how-do-i-add-gravatar-identicons-into-ruby-on-rails
		image_tag("http://www.gravatar.com/avatar.php?gravatar_id=#{Digest::MD5::hexdigest(@user.email)}", :alt => 'Avatar', :class => 'avatar')
	end
end
