require 'gosu'
require_relative '../models/player' #import player class
require_relative '../models/star' #import player class
require_relative '../modules/ZOrder' #import player class


class Tutorial < Gosu::Window

  def initialize
    super 640, 480 #window size (param :fullscreen => true to make fullscreen)
    self.caption = "Space Game" #window title
    @background_image = Gosu::Image.new("images/space_bg.png", tileable: true, retro: true) #retro means no interpolation
    @font = Gosu::Font.new(20)
    @player = Player.new
    @player.warp(320, 240)
    @star_anim = Gosu::Image.load_tiles("images/star.png", 16, 16)
    @stars = Array.new
  end

  def update
    if Gosu.button_down? Gosu::KB_LEFT
      @player.turn_left
    end

    if Gosu.button_down? Gosu::KB_RIGHT
      @player.turn_right
    end

    if Gosu.button_down? Gosu::KB_UP
      @player.accelerate
    end

    @player.move
    @player.collect_stars(@stars)

    if rand(100) < 4 and @stars.size < 5
      @stars.push(Star.new(@star_anim))
    end
  end

  def draw
    @background_image.draw(0, 0, ZOrder::BACKGROUND) #X, Y, Z
    @font.draw_text("Score: #{@player.score}", 10, 10, ZOrder::UI, 1.0, 1.0, Gosu::Color::WHITE )
    @player.draw
    @stars.each{|star| star.draw}
  end

  def button_down(id)
    if id == Gosu::KB_ESCAPE
      close
    else
      super
    end
  end
end

Tutorial.new.show

