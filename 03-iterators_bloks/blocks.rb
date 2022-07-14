=begin
def full_name(first_name, last_name)
  return "#{first_name} #{last_name.capitalize}"
end


full_name("diogo", "telo")

array = [1,2,34,4]

array.each { |number| some_code }
=end

def timer()
  now = Time.now
  puts "The timer just started!"
  yield
  after_execute = Time.now
   puts "time that it takes to execute an action: #{after_execute - now}"
end

timer do
  puts "I am executing some code"
  puts "It is going to take a while.."
  sleep(4)
  puts "I am done donig this :)"
end

puts "______"

timer do
  puts "task2"
  sleep(2)
  puts "finishing the nap"
end
