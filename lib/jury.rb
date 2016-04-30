class Jury

  attr_accessor :members

  def initialize
    @members = Array.new
  end

  def add_member( member )
    @members << member
  end

  def report_votes( final_votes )
    final_votes.each do |k,v|
      puts k.to_s + " " + v.to_s
    end
  end

  def announce_winner( final_votes )
    final_votes.keys[0]
  end

  def cast_votes( final_votes )
    votes = Hash.new

    votes_num = Array.new( 2 )
    votes_num[0] = 4
    votes_num[1] = 3
    i = 0
    final_votes.each do |item|
        votes[item] = votes_num[i]
        i += 1
    end

    puts @members

    votes
  end

end
