require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :"pirates/new"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      #@pirate_name, @pirate_weight, @pirate_height = params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight]
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])
      # @ship1_name, @ship1_type, @ship1_booty = params[:pirate][:ships], params[:pirate][:name], params[:pirate][:name]
      # @ship2_name, @ship2_type, @ship2_booty = params[:pirate][:name], params[:pirate][:name], params[:pirate][:name]
      params[:pirate][:ships].each do | details |
        Ship.new(details[:name], details[:type], details[:booty])
      end
      @ships = Ship.all

      erb :"pirates/show"
    end

  end
end
