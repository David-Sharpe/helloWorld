class GreetingsService
  def get_greeting(id)
    Greeting.find(id)
  end

  def set_greeting(country:, phrase:)
    greeting = Greeting.new({country: country, phrase: phrase})  
    greeting.save
  end

  def delete_greeting(id)
    Greeting.delete id
  end
end

