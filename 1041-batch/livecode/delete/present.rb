def timer
  start_time = Time.now
  # do some code
  yield
  end_time = Time.now
  elapse_time = end_time - start_time
  puts "Time to complete: #{elapse_time}"
end

timer do
 puts "doing a little work"
 sleep(2)
 puts "I am done"
end

timer do
  puts "doing a moreeee work"
  sleep(4)
  puts "I am done"
 end
