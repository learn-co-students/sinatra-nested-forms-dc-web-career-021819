class Ship
  @@all = []
  attr_reader :name, :type, :booty
  def initialize(name, type, booty)
    @name, @type, @booty = name, type, booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
