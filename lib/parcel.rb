class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @length.*(@width).*(@height)
  end

  define_method(:cost_to_ship) do
    if @weight.<=(15)
      weight_cost = 2

    else @weight.>(15)
      weight_cost = @weight.*(1.5)
    end

    if self.volume().<=(12)
      volume_cost = 4

    else self.volume().>(12)
      volume_cost = self.volume().*(2)
    end

    volume_cost.+(weight_cost)


  end
end
