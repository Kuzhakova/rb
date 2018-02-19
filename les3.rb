def how_many_ships(length)
  case length
  when 1
    puts '4 корабля'
  when 2
    puts '3 корабля'
  when 3
	puts '2 корабля'
  when 4
	puts '1 корабль'
  else 'Введено некорректное количество координат кораблика. Пожалуйста, введите число от 1-4'
  end
end

def shipbuilding1(length)
  i = 0
  coords = Array.new
    while i < length
	  print "Введите координату #{i+1}: "
	  coords[i] = gets.to_i
	  i+=1
	end
end

def shipbuilding2(length)
  i = 0
  coords = Array.new
	loop do
	  print "Введите координату #{i+1}: "
	  coords[i] = gets.to_i
	  i+=1
	  break if i == length
	end
end

def shipbuilding3(length)
  i = 0
  coords = Array.new
  until i >= length
    print "Введите координату #{i+1}: "
    coords[i] = gets.to_i
    i+=1
  end
    return coords
end

def shipbuilding_mas1(length, mas)
	puts 'Извините, но ваш кораблик не достроен. Достройте его, а то он утонет!' if length != mas.length 
end

def shipbuilding_mas2(length, mas)
	puts 'Извините, но ваш кораблик не достроен. Достройте его, а то он утонет!' if !(length == mas.length) 
end

def shipbuilding_mas3(length, mas)
	puts 'Извините, но ваш кораблик не достроен. Достройте его, а то он утонет!' unless length == mas.length 
end

def include_t(str)
	str if str.include? "t"
end

puts "how_many_ships"
print "Введите длину корабля: "
length = gets.to_i
how_many_ships(length)
p "-"*100

puts "1 метод"
shipbuilding1(length)
puts "2 метод"
shipbuilding2(length)
puts "3 метод"
mas = shipbuilding3(length)
puts mas
p "-"*100

puts ["cat", "dog", "tiger"].map(&:capitalize)
puts ["cat", "dog", "tiger"].map { |item| include_t(item) }.compact
 
puts "Введите длину для проверки, достроен ли корабль"
length = gets.to_i
shipbuilding_mas1(length, mas)
shipbuilding_mas2(length, mas)
shipbuilding_mas3(length, mas)