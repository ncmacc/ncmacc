class Ncmacc < Sinatra::Base
  get '/' do
    @show_large_icons = true
    erb :index
  end

  get '/:controller/:page' do
    erb ("#{params[:controller]}/#{params[:page]}").to_sym
  end

  get '/:page' do
    erb params[:page].to_sym
  end
end
