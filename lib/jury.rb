require 'colorizr'

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
      puts k.to_s.green + " " + v.to_s.blue
    end
  end

  def announce_winner( final_votes )
    puts "winner : " + ( final_votes.max_by{ |k,v| v } )[0].red
  end

  def cast_votes( final_votes )
    puts @members

    votes = Hash.new

    votes[ final_votes.first.name ] = 0
    votes[ final_votes.last.name ] = 0

    @members.each do |member|
      if( 0 == rand(2) )
        votes[ final_votes.first.name ] += 1
      else
        votes[ final_votes.last.name ] += 1
      end
    end

    votes
  end

end
