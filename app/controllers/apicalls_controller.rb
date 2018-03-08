def facebook_auth

  token_url = "https://graph.facebook.com/oauth/access_token?client_id=" + ENV["FACEBOOK_AUTH_CLIENT_ID"] + "&redirect_uri=http://"+ ENV[redirect_uri] + "&client_secret=" + ENV['FACEBOOK_AUTH_CLIENT_SECRET'] + " &code=" + params[:code]

  redirect_to :root

end