class Doctor

 attr_accessor :name, :appointment, :patient

 @@all = []

 def initialize(name)
  @name = name
  @@all << self
 end

 def self.all
   @@all
 end

def new_appointment(date, patient)
  Appointment.new(date, patient, self)
end

def patients
  Appointments.all.select do |appointment|
    appointment.patients == self
  end
end


end
