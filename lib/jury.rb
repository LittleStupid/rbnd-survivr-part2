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
    ( final_votes.max_by{ |k,v| v } )[0]
  end

  def cast_votes( final_votes )
    puts @members

    votes = Hash.new

    final_votes.each do |vote|
      votes[ vote.name ] = 0
    end

    @members.each do |member|
      name = final_votes.sample
      votes[name.to_s] += 1
    end

    votes
  end

end
