class Pirate
  attr_accessor :name, :height, :weight
  PIRATES = []

  def initialize(name:, height:, weight:)
    @name, @height, @weight = name, height, weight
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
