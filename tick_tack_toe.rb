class TicTackToe
  def initialize
    @shape = ""
    @row = nil
    @column = nil
    @move = []
    @row1 = ["_", "_", "|", "_", "_", "|", "_", "_"]
    @row2 = ["_", "_", "|", "_", "_", "|", "_", "_"]
    @row3 = [" ", " ", "|", " ", " ", "|", " ", " "]
  end

  def welcome
    puts "\tThis is a Tic Tack Toe game\n"
    puts "\tYou are always the 1st player ;)"
  end

  def select_shape
    puts "Select which shape do you want to play with: 'X' or 'O'"
    @shape = gets.chomp.upcase
    system("clear")
  end

  def move
    print "For your move, we're gonna take a row number along with a"
    puts "column number"
    puts "First, type the row number"
    @row = gets.chomp.to_i
    if @row  < 1 || @row > 3
      puts " I'm sorry, I can only take row from 1 to 3"
      @row = nil
    else
      puts "Now, please type the column number"
      @column = gets.chomp.to_i
      if @column < 1 || @column > 3
        puts " I'm sorry, I can only take column from 1 to 3"
        @column = nil
      end
    end
    @move << [@row, @column]
  end

  def board
    @move.each do |coord|
      coord[1] *= 2
      case coord[0]
      when 1
        @row1[coord[1]] = @shape
      when 2
        @row2[coord[1]] = @shape
      when 3
        @row3[coord[1]] = @shape
      end
      puts "\n\n\n"
      print " " * 20
      puts @row1.join
      print " " * 20
      puts @row2.join
      print " " * 20
      puts @row3.join
    end
  end
end
