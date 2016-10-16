class ApiConstraints
	def initialize(options)
		@version = options[:version]
		@default = options[:default]
	end

	#method gets automatically called by constraints in routes when an ApiConstraints
	#object is instantiated in it. checks to see if version in accept header
	#in request object matches the version in the constraints object in routes
	def matches?(request)
		@default || request.headers['Accept'].include?("application/api.marketplace.v#{@version}")
	end
end