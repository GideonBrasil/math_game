def new_question
    randNum1 = rand 1..20
    randNum2 = rand 1..20
    @answer = randNum1 + randNum2
    puts "#{@player_turn}: What does #{randNum1} plus #{randNum2} equal?"
    print '> '
    new_answer
end