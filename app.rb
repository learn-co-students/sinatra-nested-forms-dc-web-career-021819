require "./environment"

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end
    get "/new" do
      erb :'pirates/new'
    end
    post "/pirates" do
      @name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]

      @ship1_name = params[:pirate][:ships][0][:name]
      @ship1_type = params[:pirate][:ships][0][:type]
      @ship1_booty = params[:pirate][:ships][0][:booty]

      @ship2_name = params[:pirate][:ships][1][:name]
      @ship2_type = params[:pirate][:ships][1][:type]
      @ship2_booty = params[:pirate][:ships][1][:booty]

      pirate = Pirate.new(name: @name, weight: @weight, height: @height)
      ship_1 = Ship.new(name: @ship1_name, type: @ship1_type, booty: @ship1_booty)
      ship_2 = Ship.new(name: @ship2_name, type: @ship2_type, booty: @ship2_booty)

      erb :'pirates/show'
    end
  end
end
