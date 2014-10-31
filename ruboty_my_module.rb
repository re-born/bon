module Ruboty
  module Handlers
    class Skip < Base
      on /skip( me)?\z/i, name: "skip", description: "Skip song"

      def skip(message)
        %x(killall -USR1 ices)
      end
    end

    class Roulette < Base
      on /roulette( me)?\z/i, name: "roulette", description: "Assign someone"

      def roulette(message)
        message.reply %w(daichi kabocha mondamin bon satomi sosuke taisho6339 terrine).map{|a| "@#{a}"}.sample
      end
    end

    class Bijin < Base
      on /bijin( me)?\z/i, name: "bijin", description: "Show time"

      def bijin(message)
      	 formatted_time = Time.now.strftime("%H%M")
	 message.reply "http://www.bijint.com/kyoto/tokei_images/#{formatted_time}.jpg"
      end
    end
  end
end
