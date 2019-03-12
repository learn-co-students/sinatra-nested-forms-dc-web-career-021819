class Ship
  attr_reader :name, :type, :booty
  @@all = []

  def initialize(args)
    @name, @type, @booty = args[:name], args[:type], args[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
