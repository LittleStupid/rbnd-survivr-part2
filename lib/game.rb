class Game
  attr_accessor :tribes, :person_one, :person_two

  def initialize( person_one, person_two )
    @tribes = Array.new

    @person_one = person_one
    @person_two = person_two

    @tribes << person_one
    @tribes << person_two
  end

  def add_tribe( tribe )
    @tribes << tribe
  end

  def immunity_challenge
    Tribe.new
  end

  def clear_tribes
    @tribes.clear
  end

  def merge( name )
    trb =  Tribe.new( name: name )
    members = ( @person_one.members + @person_two.members ).uniq
    trb.members = members
    @tribes << trb
    trb
  end

  def individual_immunity_challenge
    Contestant.new( "immune" )
  end

end
