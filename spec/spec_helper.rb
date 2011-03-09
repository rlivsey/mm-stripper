$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'rspec'

require 'mm-stripper'

MongoMapper.database = 'mm-stripper-spec'

class Something
  include MongoMapper::Document
  
  plugin MongoMapper::Plugins::Stripper
  
  key :title,       String
  key :created_at,  Time
  key :body,        String
  key :thing,       Boolean
end

RSpec.configure do |config|
end
