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
require './models/feedback_response'
require './models/worker'

# Pony
Pony.options = {
  :via => :smtp,
  :via_options => {
        :address              => 'smtp.gmail.com',
        :port                 => '587',
        :enable_starttls_auto => true,
        :user_name            => 'manservant@sixofhearts.us',
        :password             => ENV['SENDER_PASSWORD'],
        :authentication       => :plain,
        :domain               => 'sixofhearts.us'
  }
}

def time_until(start_time)
  event_time = Time.parse(start_time)
  current_time = Time.now
  return "" unless event_time > current_time

  time_left = nil
  Time.diff(event_time, current_time).each do |unit, value|
    if value > 0
      time_left = if value == 1 then "1 #{unit}"
                  else "#{value} #{unit}s" end
      break
    end
  end
  if time_left then "#{time_left} remaining" else "" end
end
