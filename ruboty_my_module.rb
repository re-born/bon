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
  end
end
