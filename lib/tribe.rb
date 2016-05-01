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
    #puts options[:immune]
    #puts "***************s"
    #puts @members
    #puts "^^^^^^^^^^^^^^^^"
    if( @members.include?( options[:immune] ) )
      @members.pop
    end
    #@members.delete( options[:immune] )


    #puts "ssssssssss"
    #puts @members
    #puts "sfasgsgs"
  end

end
