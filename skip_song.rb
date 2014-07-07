module Ruboty
  module Handlers
    class Skip < Base
      on /skip( me)?\z/i, name: "skip", description: "Skip song"

      def skip(message)
        %x(killall -USR1 ices)
      end
    end
  end
end
