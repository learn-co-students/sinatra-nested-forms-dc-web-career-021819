require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get('/'){erb :root}
    get('/new'){erb :"pirates/new"}
    post '/pirates' do
      @pirate1 = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :"pirates/show"
    end
  end
end
