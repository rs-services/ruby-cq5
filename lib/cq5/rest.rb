class Cq5::Rest
  attr_reader :user, :pass, :host, :port
  require 'rubygems'
  require 'rest-client'
  require 'json'
  require 'yaml'
  def initialize
    @user = user
    @pass = pass
    @host = host
    @port = port
  end

  def client
    @client = RestClient::Resource.new("#{host}:#{port}", :user => @user, :password => @pass, :timeout => -1)
    return @client
  end
end
