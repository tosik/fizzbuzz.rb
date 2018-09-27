class FizzBuzz::Presenter
  def initialize(engine)
    @engine = engine
  end

  def print(range)
    @engine.generate(range).each do |value|
      puts value
    end
  end
end
