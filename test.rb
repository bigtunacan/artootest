require 'artoo'
require 'byebug'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-YBB-AMP-SPP'
device :sphero, :driver => :sphero

connection :keyboard, adaptor: :keyboard
device :keyboard, driver: :keyboard, connection: :keyboard

work do
  puts 'we are here'
  on keyboard, :key => :keypress
end

def keypress(sender, key)
  puts key
end

#work do
  #every(1.seconds) do
    #sphero.start_calibration
  #end
#end

#work do
#
#  @count = 1
#  every(3.seconds) do
#    sphero.set_color(255,0,0)
#    @count += 1
#    #sphero.roll speed,direction
#    sphero.roll 10, 0
#  end
#end
