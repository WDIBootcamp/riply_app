class UrlsController < ApplicationController

def index
	@urls = Url.all
end

def search
	@urls = Url.all
end


def edit
	@urls = Url.all
	id = params[:id]
	@url = Url.find(id)
end

def link
	random_string = params[:id]
	url = Url.find_by_random_string(random_string)
	redirect_to url.link
end

def update
	random_string = params[:id]
	updated_info = params.require(:url).permit(:link, :random_string)
	url = Url.find_by_random_string(random_string)
	url.update_attributes(updated_info)
	redirect_to edit_url_path(url.id)
end

def create
	new_url = params.require(:url).permit(:link, :random_string)
	new_url['random_string'] = SecureRandom.urlsafe_base64(5)
	link = new_url['link']

	# corrects the user in the case he doesn't type in http://
	u = URI(link)
	if u.scheme == nil
		link = "http://#{link}"
		new_url['link'] = link
	end

	ritly_link = Url.create(new_url)

	redirect_to edit_url_path(ritly_link.id)
end

end
