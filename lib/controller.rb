require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'gossip'
require 'view'

class Controller
  attr_accessor :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new("Jean Michel Concierge", "Fefe est de Bordeax")
    gossip.save
  end

end