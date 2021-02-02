class View

  def create_gossip
    puts "What is your gossip?"
    gossip_content = gets.chomp
    puts "What is your name?"
    gossip_author = gets.chomp
    return params = { content: gossip_content, author: gossip_author }
  end

end