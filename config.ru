# frozen_string_literal: true

class DumpGetPost

  def initialize(app)
    @app = app
  end

  def self.call(env)
    dup.process(env)
  end

  def self.process(env)
    request = Rack::Request.new(env)

    $stderr.puts "---------- env['rack.input'].read #{env['rack.input'].read} " if request.post?
    $stderr.puts "---------- request.params #{request.params} "
    $stderr.puts "---------- env['REQUEST_METHOD'] #{env['REQUEST_METHOD']} "
    $stderr.puts "---------- env['QUERY_STRING'] #{env['QUERY_STRING']} "
    $stderr.puts "---------- env['rack.request.query_string'] #{env['rack.request.query_string']} "
    $stderr.puts "---------- env['rack.request.query_hash'] #{env['rack.request.query_hash']} "
    # $stderr.puts "\n---------- env.inspect #{env.inspect}\n\n"

    return [200, {}, []]
  end

end

run DumpGetPost
