class Tribe
  attr_accessor :name, :members

  def initialize( options={} )
    @name = options[:name]
    @members = options[:members]

    puts @name
  end

  def to_s
    @name
  end

  def tribal_council( immune )
    @members.pop
  end
end
