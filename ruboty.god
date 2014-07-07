require 'god'
require 'dotenv'
Dotenv.load

God.pid_file_directory = File.dirname(__FILE__)+'/tmp/god_pids/'
God.port = ENV['PORT'][0]
God.watch do |w|
  w.name = 'ruboty'
  w.start = 'RUBOTY_ENV=production bundle exec ruboty --load skip_song.rb'
  w.dir = File.dirname(__FILE__)
  w.log = File.dirname(__FILE__)+'/log/ruboty.log'
  w.keepalive
end
