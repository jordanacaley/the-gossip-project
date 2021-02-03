class View

  def create_gossip
    puts "What is your gossip?"
    gossip_content = gets.chomp
    puts "What is your name?"
    gossip_author = gets.chomp
    return params = { "content" => gossip_content, "author" => gossip_author }
  end

  def self.index_gossips(gossips)
    gossips.each do |gossip|
      puts "According to #{gossip.author}, #{gossip.content}"
    end
  end

  def self.delete_gossip(gossips)
    i = 0
    while i < gossips.length
      puts "#{i}. According to #{gossips[i].author}, #{gossips[i].content}"
      i = i + 1
    end
    puts "Which gossip do you want to delete?"
    gossip_index = gets.chomp.to_i
    puts "Ok, here is the updated list:"
    return gossip_index
  end

end
