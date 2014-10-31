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
         area = %w(jp 2012jp 2011jp hokkaido aomori iwate sendai akita ibaraki tochigi gunma saitama chiba tokyo niigata kanazawa fukui yamanashi nagano shizuoka nagoya kyoto osaka kobe nara tottori okayama hiroshima yamaguchi kagawa fukuoka saga nagasaki kumamoto miyazaki kagoshima okinawa taiwan hawaii seifuku macho tv-asahi wasedastyle cc).sample
      	 message.reply "http://www.bijint.com/#{area}/tokei_images/#{formatted_time}.jpg"
      end
    end

    class Feeling < Base
      on /feeling( me)?\z/i, name: "feeling", description: "Ask bon about him feelings"

      def feeling(message)
        message.reply %w(Anger Hurt Embarrassed Devastated Threatened Jealous Insecure Hateful Violated Resentful Mad Enraged Furious Aggressive Provoked Hostile Frustrated Infuriated Irritated Distant Withdrawn Suspicious Critical Skeptical Sarcastic Disgust Disapproval Judgmental Loathing Disappointed Repugnant Revolted Awful Revulsion Detestable Avoidance Aversion Hesitant Sad Guilty Remorseful Ashamed Abandoned Ignored Victimized Despair Powerless Vulnerable Depressed Inferior Empty Lonely Abandoned Isolated Bored Apathetic Indifferent Happy Optimistic Inspired Open Intimate Playful Sensitive Peaceful Hopeful Loving Powerful Provocative Courageous Accepted Fulfilled Respected Proud Confident Important Interested Inquisitive Amused Joyful Ecstatic Liberated Surprise Excited Energetic Eager Amazed Awe Astonished Confused Perplexed Disillusioned Startled Dismayed Shocked Fear Scared Terrified Frightened Anxious Overwhelmed Worried Insecure Inadequate Inferior Submissive Worthless Insignificant Rejected Alienated Inadequate Humiliated Disrespected Ridiculed).sample
      end
    end
  end
end
