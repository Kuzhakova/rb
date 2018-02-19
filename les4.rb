#1
class Worker
	attr_accessor :name, :salary, :prize

	def prize
		prize = salary * 0.1
	end

	def show_message
		sum = salary+prize
		puts 'Сотрудник ' + name + ' в этом месяце получит '+ sum.to_s + " рублей!\n"
	end

	def show_mas
		@mas = [name, salary]
		puts @mas
	end
end

worker_1 = Worker.new
puts 'Enter name:'
worker_1.name = gets.chomp.encode("utf-8")
puts 'Enter the salary:'
salary = gets.to_f
#2
while (salary == 0)
  puts 'Invalid input! Enter the salary: '  
  salary = gets.to_f
end

worker_1.salary = salary
worker_1.show_message
#3
class Player
  include Comparable
  attr_accessor :lacky_shots

  def initialize(shots = 0)
    @lacky_shots = shots
  end

  def <=>(player)
    @lacky_shots <=> player.lacky_shots
  end
end

puts 'Enter lucky shots of Player 1'
p1 = Player.new(gets.to_i)
puts 'Enter lucky shots of Player 2'
p2 = Player.new(gets.to_i)

if p1 > p2
  puts 'Выигрывает 1'
elsif p1 == p2
  puts 'Ничья'
elsif p1 < p2
  puts 'Выигрывает 2'
end
#4
puts 'Output in the array:'
worker_1.show_mas
#5
workers = []
workers[0] = worker_1

for i in 1..3
  workers[i] = Worker.new
  puts "Enter name of worker #{i} "
  workers[i].name = gets.chomp.encode("utf-8")
  puts "Enter salary of worker#{i} "
  workers[i].salary = gets.to_f
end

puts "\nNames of workers:"
for i in 0..3
  puts workers[i].name
end

puts "\nSalary of workers:"
for i in 0..3
  puts workers[i].salary
end