class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [author, content]
    end
  end

  def self.all
    # Create an emtpy array called all_gossips
    all_gossips = []

    CSV.read("db/gossip.csv").each do |line|
      # Create a gossip object from each line of the CSV
      temp_gossip = Gossip.new(line[0], line[1])
      # Add each gossip object to the array
      all_gossips << temp_gossip
    end
    
    # return the array
    return all_gossips
  end

end