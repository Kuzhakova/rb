module Queuelike
  def queue
    @queue ||= []
  end
  
  def add_to_queue(obj)
    queue << obj
  end
  
  def take_from_queue
    queue.shift
  end
end