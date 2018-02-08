# 1
p 'Hello World!'
# 2
ship = Object.new
# a
def ship.whose
	'Own'
end
# b
def ship.count
	3
end
# c
def ship.is_alive?
  return true
end

def ship.is_damaged?
  return false
end
# 4
shot = Object.new
def shot.coodinate1
	enemy_ship = [1,2,3]
	x = 3
	if enemy_ship.include?(x) then
	p 'The shot hit!'
    end

end
# 5
def shot.coodinate2
	enemy_ship = [[1, 2], [3, 4]] 
	puts "Enter х"
    x = gets.to_i
    puts "Enter у"
    y = gets.to_i
    mas = [x, y]
	if enemy_ship.include?(mas) then
	p 'The shot hit!'
    else  
    p 'Miss!'
    end
end

shot.coodinate2
