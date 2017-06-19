class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.web_console.whitelisted_ips = '127.0.0.1'
end
