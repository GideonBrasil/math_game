class Player
    attr_reader :name

    def initialize player
        @name = player
        @lives = 0
    end

    def start
        puts ('Time to play an awesome nerd game!')
        

print "> "
        choice = $stdin.gets.chomp