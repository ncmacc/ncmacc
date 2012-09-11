# Required Ruby Libraries
require 'json'
require 'digest/md5'
require 'cgi'
require 'uri'
require 'net/http'
require 'fileutils'

# Rubygems
require 'bundler'
Bundler.require(:default)

# Application
require 'sinatra/base'
require './ncmacc'

# Pony
Pony.options = {
  :via => :smtp,
  :via_options => {
        :address              => 'smtp.gmail.com',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => 'noreply@ncmacc.org',
        :password             => 'pianoframeornamentflyer',
        :authentication       => :plain,
        :domain               => 'ncmacc.org'
  }
}
