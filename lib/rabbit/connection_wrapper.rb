module Rabbit
  require 'yaml'
  require 'bunny'
  class ConnectionWrapper
    attr_reader :connection
    def initialize
      filename = File.join(File.dirname(__FILE__), "../../config.yaml")
      parm = YAML.load_file(filename)
      puts parm
      @connection = Bunny.new(:host => parm['host'], :user => parm['user'], :pass => parm['pass'])
      @connection.start
    end

  end

end