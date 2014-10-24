require 'sinatra'
require 'data_mapper' 

env = ENV["RACK_ENV"] || "developmenta"

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require_relative 'peep'

DataMapper.finalize

DataMapper.auto_upgrade!

get '/' do
	@peeps = Peep.all
	erb :index
end