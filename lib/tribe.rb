class Tribe
  attr_accessor :name, :members

  def initialize( options={} )
    @name = options[:name]
    @members = options[:members] || Array.new

    puts @name
  end

  def to_s
    @name
  end

  def tribal_council( options={} )
    members_without_immue = @members.select{ |member| member != options[:immune] }
    deleted_member = members_without_immue.sample
    @members.delete( deleted_member )
  end

end
