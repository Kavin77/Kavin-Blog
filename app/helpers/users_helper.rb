module UsersHelper
	def gravatar_for(user, option = {size: 80})
		email_address = user.email;
		hash = Digest::MD5.hexdigest(email_address)
		size = option[:size]
		url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
		image_tag(url, alt: user.username, class: "rounded mx-auto d-block shadow")
	end
end
