
class Ship
  attr_reader :length, :coords, :index

  @@total_count = 0
  @index = 0
  def initialize(length)
  	@length = length
  	@coords = Array.new(2) {Array.new(2)}
  	begin
      print "Введите начальную координату\nx: "
      x = gets.to_i
      print 'y: '
      y = gets.to_i
      raise 'Начальные координаты не входят в поле!' if (x < 0 || y < 0 || x > 10 || y > 10)

      print 'Расположить корабль горизонтально/вертикально (1/2) '
      t = gets.to_i
      if (t == 2)
  		for i in 0...(length)
          @coords[i] = [x,y]
          x+=1
          raise 'Корабль выходит за границы поля!' if (x > 10)
      	end
      else
  		for i in 0...(length)
          @coords[i] = [x,y]
          y+=1
          raise 'Корабль выходит за границы поля!' if (y > 10)
      	end
      end
    rescue
      puts $!.inspect 
    end

  	@@total_count += 1
  	@index = @@total_count
  end

end

class Field
  attr_reader :size, :field

  def initialize(size)
  	@size = size
  	@field = Array.new(size) {Array.new(size, 0)}
  	puts '*'*100
  	puts "Поле 10x10 успешно создано"
  end

  def set(ship)
  	begin
  	for i in 0...(ship.length) 	  
  	  raise 'Расположить корабль невозможно: тут находится другой корабль!' if @field[ship.coords[i][0]][ship.coords[i][1]] != 0
  	  @field[ship.coords[i][0]][ship.coords[i][1]] = ship.index
  	end
  	rescue
      puts $!.inspect
    end

  	print @field
  end

  def delete(ship)
    for i in 0...(ship.length)
  	  @field[ship.coords[i][0]][ship.coords[i][1]] = 0
  	end
  	print @field
  end	

end

field = Field.new(10)
puts "Введите размер корабля:"
n = gets.to_i
while (!(1..4).include?(n))
  puts "Длина корабля должна быть от 1 до 4! Введите размер корабля:" if !(1..4).include?(n)
  n = gets.to_i
end
puts '*'*100
ship0 = Ship.new(n)
field.set(ship0)
puts 'Создан кораблик 0 и размещен на поле.'
puts '*'*100
ship1 = Ship.new(3)
field.set(ship1)
puts 'Создан кораблик 1 и размещен на поле.'
puts '*'*100
puts 'Удаление с поля кораблика 1'
field.delete(ship1)