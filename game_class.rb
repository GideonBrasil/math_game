require 'timeout'

class Game
    attr_reader :player_turn, :player1, :player2

    def initialize player1, player2
        @player1 = player1
        @player2 = player2
        @player_turn = @player1.name
    end

    def start
        while @player1.lives > 0 && @player1.lives > 0
            new_question
        end
    end

    def new_answer
        begin
            Timeout::timeout 3 do
                @player_answer = gets.chomp.to_i
            end
            rescue  Timeout::Error
                 puts "Too slow"
    end
        check_answer
    end

    def check_answer
        if @player_answer
            if @player_answer != @answer
                puts "#{@player_turn}: Seriously? You're as dumb as a doornail!"
                check_player_lives
            else
                puts "#{@player_turn}: YES! You are correct"
            end
        end
        puts "P1 #{@player1.lives}/3 vs P2 #{@player2.lives}/3"
        game_continue_or_end
    end 

    def check_player_lives
        if @player_turn == @player1.name
            @player1.lose_life
        else
            @player2.lose_life
        end
    end

    def game_continue_or_end
        if @player1.lives.zero? || @player2.lives.zero?
            end_game
        else
            continue_game
        end
    end

    def continue_game
        puts '----- NEW TURN -----'
        @player_turn = if @player_turn == @player1.name
                        @player2.name
                    else
                        @player1.name
                    end
        new_question
    end

    def end_game
        if @player1.lives.zero?
            puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
            puts ''
            puts '----- GAME OVER -----'
            puts ''
            puts "Geez... Go study some more math #{@player1.name}."
            puts 'Good bye!'
            exit(0)
        else 
            puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
            puts ''
            puts '----- GAME OVER -----'
            puts ''
            puts "Geez... Go study some more math #{@player2.name}."
            puts 'Good bye!'
            exit(0)
        end
    end
end