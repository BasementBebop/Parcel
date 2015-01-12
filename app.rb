require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/form') do
  erb(:form)
end

get('/cost') do
  length = params.fetch('length')
  width = params.fetch('width')
  height = params.fetch('height')
  weight = params.fetch('weight')
  package = Parcel.new(length.to_i(), width.to_i(), height.to_i(), weight.to_i())
  @shipping_cost = package.cost_to_ship()
  puts "this is the shipping cost"
  puts @shipping_cost
  erb(:cost)
end
