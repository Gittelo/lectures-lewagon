# Timer will tell us how many seconds does it take to run some code
def timer
  start_time = Time.now
  puts "Timer just started!"

  ##execute some code
  yield

  end_time = Time.now

  puts "This took #{end_time - start_time}"
end


timer do
  puts "I am doing a bit of work!"
  sleep(2)
  puts "I am done!"
end
puts "______"
timer do
  puts "I am doing a loooot of work!"
  sleep(5)
  puts "I am done! ufff..."
end

puts "______"
timer do
  puts "I am doing a reaaaallly fast of work!"
  puts "done!"
end
