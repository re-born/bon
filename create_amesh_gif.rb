NOW = Time.now.freeze

recent_times = []
8.times { |i| recent_times << (NOW - 5 * 60 * (i+1) ) }
formatted_recent_times = recent_times.map{ |t|
  t_int = t.strftime('%Y%m%d%H%M').to_i
  t_int - ( t_int % 5 )
}

formatted_recent_times.each { |time|
  %x(wget http://tokyo-ame.jwa.or.jp/mesh/100/#{time}.gif)
  %x(convert -crop 500x500+1600+700! #{time}.gif #{time}_trimmed.gif)
  %x(convert #{time}_trimmed.gif trimmed_msk.png -composite composed_#{time}.png)
  %x(rm #{time}.gif)
}

%x(convert -dispose previous -delay 50 composed_*.png animated_#{formatted_recent_times[0]}.gif)

%x(rm composed_*.png)
%x(rm composed_*.png *_trimmed.gif)
