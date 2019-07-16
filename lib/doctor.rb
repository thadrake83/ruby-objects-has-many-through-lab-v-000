class Doctor

 attr_accessor :name, :appointment, :patient

 @@all_doc = []

 def initialize(name)
  @name = name
  @@all_doc << self
 end

 def self.all
   @@all_doc
 end


 end
