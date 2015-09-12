class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds/3600
		without_hours = @seconds%3600
		minutes = without_hours/60
		the_seconds = without_hours%60
		sprintf("%02d:%02d:%02d", hours, minutes, the_seconds)
	end

end
