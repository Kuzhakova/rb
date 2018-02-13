class Coord
  attr_accessor :x, :y,:name, :length

  def initialize(x, y)
    @x = x
    @y = y
  end

  def self.is_built?(ship) 
  	if (ship.length == ship.coords.length)
  		true 
  	else 
      false
  	end
  end

end

class Shot < Coord

#	def check(ship) 

end

class Ship
  attr_reader :name, :length, :coords

  def initialize(name, length)
    if (length > 4) || (length < 0)
      puts "Ship size should be in 1..4"
    else
      @length = length
      @name = name
    end
  end

  def put_coords(*data)
  	@coords = Array.new(data.length)

  	for i in 0..data.length-1
  		@coords[i]=Coord.new(data[i].x, data[i].y)
  	end
  end

  def show_coords
  	for i in 0..(length-1)
  	  print "(#{@coords[i].x};#{@coords[i].y}) "
    end
    puts ""
  end

  def state?(status)
  	['dead', 'alive', 'damaged'].include?(status)
  end

  def self.how_many_ships(length)
    case length 
    when 1
      puts 4
    when 2
      puts 3
    when 3
      puts 2
    when 4
      puts 1
    end
  end
end

ship = Ship.new('"Ship 1"', 2)
ship.put_coords(Coord.new(1,1), Coord.new(1,2))
ship.show_coords
puts Coord.is_built?(ship)
