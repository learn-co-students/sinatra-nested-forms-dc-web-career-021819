require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      p = params["pirate"]
      puts params
      # binding.pry
      @pirate = Pirate.new(
                  p["name"],
                  p["weight"],
                  p["height"])
      ship1 = p["ships"][0]
      ship2 = p["ships"][1]
      @ship1 = Ship.new(ship1["name"], ship1["type"], ship1["booty"])
      # binding.pry
      @ship2 = Ship.new(ship2["name"], ship2["type"], ship2["booty"])
      erb :"pirates/show"
    end

  end
end
