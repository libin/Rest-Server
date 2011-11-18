require "rubygems"
require "bundler/setup"

require "grape"

class RestServer < Grape::API
  resource :user do
    get '/show/:id' do
      {:id => params[:id], :name => 'Grape'}
    end
  end
end