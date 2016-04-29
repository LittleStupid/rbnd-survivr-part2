class Jury

  attr_accessor :members

  def initialize
    @members = Array.new
  end

  def add_member( member )
    @members << member
  end

  def report_votes( votes )
    puts votes

    votes.each do |vote|
      puts vote
    end
  end

  def cast_votes( lists )
    votes = Hash.new

    votes_num = Array.new( 2 )
    votes_num[0] = 4
    votes_num[1] = 3
    i = 0
    lists.each do |item|
        votes[item] = votes_num[i]
        i += 1
    end

    puts @members

    votes
  end

end
