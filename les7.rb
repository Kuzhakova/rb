require './queue'

class ProgrammingCircle
  include Enumerable 

  def kids 
	{ 'Иванов' => 23, 'Петров' => 31, 'Сидоров' => 22, 'Алексеева' => 12, 'Казанцев' => 43, 'Антропов' => 21, 'Анисимова' => 30, 
		'Кузнецов' => 25, 'Соловьев' => 25, 'Кошкина' => 53 }
  end

  def each
	kids.each { |key, value| yield key, value }
  end
end

class Queue
  include Queuelike
end

class1 = ProgrammingCircle.new
class1.each do |k,v|
  puts "Next kid is: #{k}"
end
kid_a = class1.find { |k,v| k.start_with?('А') }
puts "Kid with first letter А is #{kid_a[0]}"

puts 'Find all:'
puts class1.find_all { |k,v| k.start_with?('А') }
max = class1.max_by{ |k,v| v }
puts "Max: kid - #{max[0]}, solutions - #{max[1]}."

puts 'Match!' if /\[(10|[0-9]),(10|[0-9])\]/.match('[10,3]')
puts 'Match!' if /\[[А-К](10|[0-9])\]/.match('[Ж2]')

q = Queue.new
q.add_to_queue('item one')
q.add_to_queue('item two')
q.add_to_queue('item three')
puts 'Objects currently on the queue:'
puts q.queue
puts "Removed this object: #{q.take_from_queue}"
puts 'Now on queue:'
puts q.queue