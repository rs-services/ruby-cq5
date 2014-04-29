class Cq5
  require 'rubygems'
  require 'yaml'
  def initialize
    #initialize global auth from file if exists
    if File.exists?(File.join(ENV["HOME"],".cq5_auth"))
      parsed_file = YAML.load(File.read(File.join(ENV["HOME"],".cq5_auth")))
    else
    #need options from command line, raise for now
      raise "auth file does not exist"
    end

  end
end

require 'cq5/author'
require 'cq5/publisher'
