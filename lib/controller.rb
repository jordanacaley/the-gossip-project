require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'gossip'
require 'view'

class Controller

  def initialize

  end

  def create_gossip
    Gossip.new
  end

end