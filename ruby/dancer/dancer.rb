class Dancer

  attr_reader :name, :card
  attr_accessor :age 

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
    p "*twirls*"
  end

  def bow
    p "*bows*"
  end

  def queue_dance_with(partner)
    @card << partner
   p @card
  end

  def begin_next_dance
    new_card = @card.shift
    p @card
    p "Now dancing with #{new_card}."
  end

  def limit(num)
    if @card.length < num
    p "This cards has less than #{num}"
    else
    p "Sorry! This card contains more than 4 dancers :("
    end
  end
end


dancer = Dancer.new("Misty Copeland", 33)

dancer.pirouette
dancer.bow
dancer.name
dancer.age
dancer.age = 34

dancer.queue_dance_with("Mikhail Baryshnikov")
dancer.queue_dance_with("Anna Pavlova")
dancer.begin_next_dance
p dancer.card

dancer.queue_dance_with("Mikhail Baryshnikov")
dancer.queue_dance_with("Anna Pavlova")
dancer.queue_dance_with("Bob")
dancer.queue_dance_with("Ashlee")
p dancer.limit(4)
