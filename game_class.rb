class Game
    attr_reader :player_turn
    attr_writer :player1, :player2

    def initialize
        @player1 = Player.new 'player1'
        @player2 = Player.new 'player2'
        @player_turn = player_turn
        new_question
    end

    def new_question
        randNum1 = rand 1..20
        randNum2 = rand 1..20
        answer = randNum1 + randNum2
        puts "Player: What does #{randNum1} plus #{randNum2} equal?"
        print "> "
        new_answer
    end

    def new_answer
        player_answer = gets.chomp.to_i
    end
end