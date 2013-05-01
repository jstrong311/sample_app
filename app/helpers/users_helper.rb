module UsersHelper

#returns the Gravat (http://gravatar.com) for the given user
	def gravatar_for(user, options={})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		if (options[:size])
			gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{options[:size]}"
		else
			gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=mm"
		end
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

end
