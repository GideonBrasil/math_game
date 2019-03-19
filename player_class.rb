class Player
    attr_reader :name

    def initialize player
        @name = player
        @lives = 0
    end

    def start
        puts 'Time to play an awesome nerd game!'
    end
end

game = Player.new 'Gideon'
game.start