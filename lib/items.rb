class Items

	ITEMS = { burger: 10, chips: 10, coke:10 }

	attr_reader :number

	def initialize number
		@number = number
	end

	def self.method_missing name
		return new ITEMS[name] if ITEMS[name]
		super
	end 

end