class Jury

  attr_accessor :members

  def initialize
    @members = Array.new
  end

  def add_member( member )
    @members << member
  end

end
