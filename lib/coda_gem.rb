require "coda_gem/version"



module CodaGem
  # Your code goes here...
  def self.create(path)
  	# A::B::C

  	# define root
  	root = Object
  	#split ::root
  	path.split('::').each do |name|
  		new_module = root.const_defined?(name)? root.const_get(name) : nil

  		unless new_module
  			new_module = Module.new
  			root.const_set(name, new_module)
  		end

  	root = new_module
  	end
  end
end
