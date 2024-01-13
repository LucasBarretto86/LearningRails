class Star

  attr_reader :x, :y

  def initialize(animation)
    @animation = animation
    @color = Gosu::Color::BLACK.dup
    @color.red = rand(256 - 40) + 40
    @color.green = rand(256 - 40) + 40
    @color.blue = rand(256 - 40) + 40
    @x = rand(640)
    @y = rand(480)
  end

  def draw
    image = @animation[Gosu.milliseconds / 120 % @animation.size]
    image.draw(@x - image.width / 2.0, @y - image.height / 2.0, ZOrder::STARS, 1, 1, @color, :add)
  end

end
