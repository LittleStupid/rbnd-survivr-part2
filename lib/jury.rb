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
    #is it a good idea to assign fixed votes number to each one ?
    votes[ final_votes.first.name ] = 4
    votes[ final_votes.last.name ] = 3

    votes
  end

end
