class Dancer
  attr_reader :name # @name and @card should be readable
  attr_accessor :age, :card # @age should readable and writable

  def initialize(name, age)
    # since you are passing in a string
    # as the name param there is no need
    # to use .to_s here
    @name = name
    # since you are passing in a number
    # as the age param there is no need
    # to use .to_i here
    @age = age
    @card = []
  end

# def name #using attr_reader makes this method no longer needed
    # @name should be reabable. If name is readable why do you not need this method?
#   @name
 # end

# def age #using attr_accessor makes this method no longer needed
    # @age should be both reabable and writeable. If age is readable and writeable why do you not need this method?
#   @age
# end

  def pirouette
    p "*twirls*"
  end

  def bow
    p "*bows*"
  end

  def queue_dance_with(partner)
    # since you are passing in a string
    # as the partner param there is no need
    # to use .to_s here
    @card << partner
  end

# def card #using attr_reader makes this method no longer needed
    # @card should be reabable. If card is readable why do you not need this method?
#   @card
# end

  def begin_next_dance
    # The spelling mistake on your variable is causing an error here
    new_card = @card.shift
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
puts dancer.card
