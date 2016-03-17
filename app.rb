require 'bundler'
Bundler.require()

get '/' do
  phamazon_product = {
    :name => 'New Keyboard',
    :quantity => 17,
    :description => 'Generic Keyboard',
    :price => 5.99
  }.to_json
end

get '/pumped' do
  "<strong>GET PUMPED LIKE WIZARDS</strong>.<em> YOLO </em>"
end

not_found do
  {
    :message => "The resource you requested could not be found."
  }.to_json
end
