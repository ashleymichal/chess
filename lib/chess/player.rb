module Chess
  class Player
    attr_writer :taken
    attr_reader :name, :color
    def initialize(input)
      @color = input.fetch(:color)
      @name = input.fetch(:name)
      @taken = []
    end

    def taken
      @taken.compact
    end
  end
end