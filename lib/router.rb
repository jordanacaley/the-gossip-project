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
      puts "2. Show all the gossip"
      puts "3. Delete a gossip"
      puts "4. I want to exit the app"
      params = gets.chomp.to_i

      case params
      when 1
        puts "*"*50
        puts "You want to create a gossip"
        @controller.create_gossip
        puts "*"*50

      when 2
        puts "*"*50
        puts "You want to see all the gossips!"
        @controller.index_gossips
        puts "*"*50

      when 3
        puts "*"*50
        puts "You want to delete a gossip"
        @controller.delete_gossip
        puts "*"*50
      
      when 4
        puts "*"*50
        puts "See you later!"
        puts "*"*50
        break

      else
        puts "Not a valid choice. Please try again."
      end
    end
  end

end