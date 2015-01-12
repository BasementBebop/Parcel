require('rspec')
require('parcel')

describe(Parcel) do
  describe("volume") do
    it('returns the volume of a package from the height, length, and width') do
      test_parcel = Parcel.new(2, 2, 2, 30)
      expect(test_parcel.volume()).to(eq(8))
    end
  end

  describe("cost_to_ship") do
    it('returns the shipping cost of a package based on its volume and weight') do
      test_parcel = Parcel.new(2, 2, 2, 30)
      expect(test_parcel.cost_to_ship()).to(eq(49))
    end
  end
end
