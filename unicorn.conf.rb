# frozen_string_literal: true

listen            Integer(ENV['PORT'] || 5000)
listen            ENV['SOCKET'] || '/tmp/dump-get-post.sock'
timeout           Integer(ENV['TIMEOUT'] || 30)
preload_app       true
worker_processes  Integer(ENV['PROCESSES'] || 1)
pid               ENV['PID_FILE'] if ENV['PID_FILE']

