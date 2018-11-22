class GreetingsService
  def get_greeting(id)
    Greeting.find(id)
  end

  def set_greeting(country:, phrase:)
    Greeting.save
  end

  def delete_greeting(id)
    Greeting.delete id
  end
end

