def countdown
    puts "3 seconds left."
    if sleep 1 
        puts "2 seconds left."
    end
    if sleep 1
        puts "1 seconds left."
    end
    sleep 1
    puts "Too slow!"
end

countdown