OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '468347859863144', '2a09233f9354c1dacac2050c2458feb3'
end