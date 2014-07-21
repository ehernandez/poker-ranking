Dir[File.expand_path("../../lib/**/*.rb",__FILE__)].each { |file| require file }

require 'bundler'
Bundler.require