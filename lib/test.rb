require_relative './coda_gem'

 
a = Module.new

Object.const_set("APPLE", a)
p Module.ancestors