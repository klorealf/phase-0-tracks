class Game

	def initialize
		@word = nil
		@secret_word = nil
		@guess_count = 0
		@guesses = []
	end

	def set_word(word)
		@word = word.downcase
	end

	def secret_word
		@secret_word = @word
		@secret_word = @secret_word.tr("abcdefghijklmnopqrstuvwxyz", "-")
		p @secret_word
	end

	def guess(letter)
		letter = letter.downcase
		if letter.length > 1 
			p"Enter one letter-guess at a time."
		elsif @guesses.include?(letter)
			p "You already guessed this letter. Guess again!"
		elsif @word.include?(letter) 
			@secret_word.insert(@word.index(letter), letter)
			@secret_word[@word.index(letter)+1] = ""
			@guesses << letter
			p @secret_word
			@guess_count = @guess_count + 1
		else @word.include?(letter) == false
			p "Try again!"
			@guesses << letter
			p @secret_word
			@guess_count = @guess_count + 1	
		end
			
		end

	def start_game
		p "Player 1: Enter a secret word."
		set_word(gets.chomp.to_s)
		secret_word
		p "Player 2: Guess the word. You have #{(@word.length)} guesses!"
		until @guess_count == (@word.length) 
			do guess(gets.chomp)
			p "(That was guess number #{@guess_count})"
		break if @secret_word.include?('-') == false
		end
		if @secret_word.include?('-') then
			p "Times up! No more guesses!"
		else p "Congrats!"
		end
	end

	end

game = Game.new
game.start_game
