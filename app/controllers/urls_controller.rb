class UrlsController < ApplicationController

def index
end

def search
end

def create
	new_url = params.require(:url).permit(:link, :random_string)
	new_url['random_string'] = SecureRandom.urlsafe_base64(5)
	ritly_link = Url.create(new_url)

	# trying to use class methods to create a new instance of the class
	# new_url = Url.create_random_string
	# url = Url.create(new_url)

	# the redirect is not working URL is an undefined variable
	redirect_to url
end

end
