class LED
  def self.set(led, red, green, blue)
    serialport = Serial.new '/dev/ttyACM0'

    serialport.write([led, red, green, blue].join(' ')+ "\n")
  end
end