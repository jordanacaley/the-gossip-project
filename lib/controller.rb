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
    gossip = Gossip.new(params["author"], params["content"])
    gossip.save
  end

  def index_gossips
    # Ask the model for an array containing all the gossips in the database
    gossips = Gossip.all
    # Ask the view to execute it's own index_gossips method to show the gossips
    View.index_gossips(gossips)
  end

end