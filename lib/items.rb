require_relative 'restaurant'

class Items

	attr_accessor :stocklist

	def initialize
		@stocklist = {burger: 10, chips: 10, coke: 10}
	end

end