class Tutorial
  def initialize(name, type, difficulty)

    @name = name
    @type = type
    @difficulty = difficulty

  end

  def difficulty
    @difficulty
  end

  def type
    @type
  end

  def compare_course(object)

      if object.type == @type
          is_harder_than(object.difficulty)
      else
         puts "you fucked up"
      end
      
  end

  def is_harder_than(compare)
    hash = {:easy => 1, :medium =>2, :hard => 3, :advanced => 4, :expert => 5}
    compare = hash[compare] < hash[@difficulty]
  end

end


tute1 = Tutorial.new("coderfactory", :ruby, :hard)
tute2 = Tutorial.new("blah", :ruby, :medium)
tute3 = Tutorial.new("nup", :javascript, :easy)

puts tute1.compare_course(tute3)
