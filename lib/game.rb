class Game
  attr_accessor :tribes, :person_one, :person_two

  def initialize( tribe_one, tribe_two )
    @tribes = Array.new

    @tribe_one = tribe_one
    @tribe_two = tribe_two

    @tribes << tribe_one
    @tribes << tribe_two
  end

  def add_tribe( tribe )
    @tribes << tribe
  end

  def immunity_challenge
    #@tribes.tribal_council( @tribes.first)
    @tribes.sample
  end

  def clear_tribes
    @tribes.clear
  end

  def merge( name )
    contestants = tribes.map(&:members).flatten
    Tribe.new(name: name, members: contestants)
  end

  def individual_immunity_challenge
    @tribes.last.members.sample
  end

end
