class Game
  attr_accessor :tribes, :person_one, :person_two

  def initialize( *tribes )
    @tribes = Array.new
    tribes.each{ |tribe| @tribes << tribe }
  end

  def add_tribe( tribe )
    @tribes << tribe
  end

  def immunity_challenge
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
