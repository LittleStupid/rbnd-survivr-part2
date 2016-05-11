class Game
  attr_accessor :tribes, :merge_tribe, :person_one, :person_two

  def initialize( *tribes )
    @tribes = Array.new
    tribes.each{ |tribe| @tribes << tribe }

    merge( "init_merged")
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
    contestants = @tribes.map(&:members).flatten
    #clear_tribes
    @merge_tribe = Tribe.new(name: name, members: contestants)
    @merge_tribe
  end

  def individual_immunity_challenge
    #@tribes.last.members.sample
    deleted_member = @merge_tribe.members.sample
    #puts ""
    #puts "BEFORE"
    #puts @merge_tribe.members.length

    @merge_tribe.tribal_council( immue: @merge_tribe.members.sample )
    #puts "AFTER"
    #puts @merge_tribe.members.length
    #puts "DONE"
    #puts ""
  end

end
