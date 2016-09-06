class CootieCatcher

  COLORS = ["RED", "GREEN", "PINK", "YELLOW", "ORANGE", "BLUE", "BLACK", "WHITE", "MAGENTA", "ROSE GOLD", "GREY", "SILVER"]

  NUMBERS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

  FORTUNES = [
    "Do not mistake temptation for opportunity.",
    "Never wear your best pants when you go to fight for freedom.",
    "Your friends secretly agree that your head is too small for your body.",
    "Accept that some days you're the pigeon and some days you're the statue.",
    "Don't fry bacon in the nude.",
    "When everything's coming your way, you're probably in the wrong lane.",
    "Hearty laughter is a good way to jog internally without having to go outdoors.",
    "Life will be happy, until the end when you'll pee yourself a lot.",
    "A thrilling time is in your immediate future.",
    "An alien of some sort will be appearing to you shortly!",
    "You will find a thing and it will be important.",
    "You are cleverly disguised as a responsible adult.",
    "You will soon have an out of money exprience.",
    "He who dies with most money, still dies.",
    "Look before you leap. Or wear a parachute.",
    "The end is near, mine as well have dessert.",
    "Your pet is planning to eat you.",
    "Don't trust your cat.",
    "A lucrative career change awaits. Have you considered gangsta rap?",
  ]

  def play
    color
    if valid_color?
      number
      continue
    else
      print_bad_color_input_message
      play
    end
    fortune
  end

  def continue
    if valid_number?
      second_number
    else
      print_bad_number_input_message
      play
    end
  end

  private
  attr_reader :color_choice, :random_color, :random_number, :number_choice, :next_random_number, :second_number_choice

  def color
    puts "\nPick a color: "
    @random_color = COLORS.sample(4)
    puts random_color
    @color_choice = gets.chomp.downcase
  end

  def valid_color?
    @random_color.include?(@color_choice.upcase)
  end

  def print_bad_color_input_message
    puts "Sorry, #{color_choice} is not a valid choice. Start over.\n"
  end

  def number
    puts "\nPick a number: "
    @random_number = NUMBERS.sample(4)
    puts random_number
    @number_choice = gets.chomp.to_i
  end

  def valid_number?
    @random_number.include?(number_choice)
  end

  def print_bad_number_input_message
    puts "Sorry, #{number_choice} is not a valid choice. Start over.\n"
  end

  def second_number
    puts "\nPick a number: "
    @next_random_number = NUMBERS.sample(4)
    puts next_random_number
    @second_number_choice = gets.chomp
  end

  def fortune
    puts "\n"
    puts FORTUNES.sample
  end
end

CootieCatcher.new.play
