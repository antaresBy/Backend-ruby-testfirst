require "time"

class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds ||= 0
  end

  def time_string 
    minutes = 0
    hours = 0

    if (seconds > 59)
      minutes = @seconds/60
      @seconds -= minutes*60 
    end

    if (minutes > 59)
      hours = minutes/60
      minutes -= hours*60
    end

    "#{"%02d" % (hours.to_i)}:#{"%02d" % (minutes.to_i)}:#{"%02d" % (seconds.to_i)}"
  end
end
