require 'Time'

module CanTakePhotos
  def self.take_photo operatingSystem
    "Photo taken in #{operatingSystem}"
  end
end

class Device
  attr_reader :operatingSystem

  def initialize(operatingSystem, screenSize)
    @operatingSystem = operatingSystem
    @screenSize = screenSize
  end

  def print_current_time
    puts DateTime.now
  end
end

class Phone < Device
  include CanTakePhotos

  def initialize(operatingSystem, screenSize, agenda)
    super(operatingSystem, screenSize)
    @agenda = agenda
  end

  def take_photo
    puts CanTakePhotos::take_photo(@operatingSystem)
  end

  def call_contact contact
    if @agenda.include? contact
      puts "Llamando a #{contact.name}..."
    else
      puts "#{contact.name} no está en la agenda..."
    end
  end
end

class SmartWatch < Device
  include CanTakePhotos

  def initialize (operatingSystem, screenSize)
    super(operatingSystem, screenSize)
  end

  def print_current_time
    puts "***#{Time.now().strftime("%Y-%m-%d %H:%M:%S")}***"
  end

  def take_photo
    puts CanTakePhotos::take_photo(@operatingSystem)
  end
end

class Laptop < Device
  def initialize(operatingSystem, screenSize, touchable)
    super(operatingSystem, screenSize)
    @touchable = touchable
  end
end

class Microwave
  def initialize
  end

  def heat_food
    puts "bzzzzzzzzzzzzzzzzzzzz"
  end

  def print_current_time
    puts DateTime.now
  end
end

class Agenda
  def initialize
    @contacts = []
  end

  def add_contact contact
    @contacts << contact
  end

  def show_agenda
    @contacts.each { |contact| puts "#{contact.name}: #{contact.phone}" }
  end
end

class Contact
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end
end

iWatch = SmartWatch.new("iOS 8", 1.88)
macBook = Laptop.new("OSX Yosemite", 13.1, false)
galaxyS6 = Phone.new("Android 6", 5.5, Agenda.new())
bosch = Microwave.new()

array =[iWatch, macBook, galaxyS6, bosch]

array.each { |device| device.print_current_time }
