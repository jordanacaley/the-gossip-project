require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'

class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "WELCOME TO THE GOSSIP PROJECT!"

    while true

      puts "What do you want to do?"
      puts "1. I want to create a gossip"
      puts "4. I want to exit the app"
      params = gets.chomp.to_i

      case params
      when 1
        puts "You want to create a gossip"
        @controller.create_gossip
      
      when 4
        puts "See you later!"
        break

      else
        puts "Not a valid choice. Please try again."
      end
    end
  end

end