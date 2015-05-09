OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '144293077746-77jv51saqnqe31ctinbps0gjb6ff00aq.apps.googleusercontent.com', 'UQjRkmSOq2ddEDgCP2XTVM93', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end