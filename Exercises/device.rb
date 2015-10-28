require 'Time'

module CanTakePhotos
  def self.take_photo os
    "Photo taken in #{os}"
  end
end

class Device
  attr_reader :os

  def initialize(os, screenSize)
    @os = os
    @screenSize = screenSize
  end

  def print_current_time
    puts DateTime.now
  end
end

class Phone < Device
  include CanTakePhotos

  def initialize(os, screenSize)
    super(os, screenSize)
    @agenda = []
  end

  def add_contact contact
    @agenda << contact
  end

  def show_agenda
    @agenda.each { |contact| puts "#{contact.name}: #{contact.phone}" }
  end

  def take_photo
    puts CanTakePhotos::take_photo(@os)
  end
end

class SmartWatch < Device
  include CanTakePhotos

  def initialize (os, screenSize)
    super(os, screenSize)
  end

  def print_current_time
    puts "***#{Time.now().strftime("%Y-%m-%d %H:%M:%S")}***"
  end

  def take_photo
    puts CanTakePhotos::take_photo(@os)
  end
end

class Laptop < Device
  def initialize(os, screenSize, touchable)
    super(os, screenSize)
    @touchable = touchable
  end
end

class Contact
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end
end

galaxS6 = Phone.new("Android 6", 5.5)
galaxS6.print_current_time()

iWatch = SmartWatch.new("iOS 8", 1.88)
iWatch.print_current_time()

macBook = Laptop.new("OSX Yosemite", 13.1, false)
macBook.print_current_time()

gonzalo = Contact.new("Gonzalo", "123456789")
iago = Contact.new("Iago", "123456789")
laura = Contact.new("Laura", "123456789")
lluis = Contact.new("Lluis", "123456789")
fer = Contact.new("Fer", "123456789")
roberto = Contact.new("Roberto", "123456789")

galaxS6.add_contact(gonzalo)
galaxS6.add_contact(iago)
galaxS6.add_contact(laura)
galaxS6.add_contact(lluis)
galaxS6.add_contact(fer)
galaxS6.add_contact(roberto)
galaxS6.show_agenda

galaxS6.take_photo
