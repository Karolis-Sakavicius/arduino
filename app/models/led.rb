class LED
  def self.set(led, red, green, blue)
    serialport = Serial.new '/dev/arduino'

    serialport.write([led, red, green, blue].join(' ')+ "\n")
  end

  def self.reset(size)
    serialport = Serial.new '/dev/arduino'

    (size * size).times do |led|
      serialport.write((led + 1).to_s + ' 0 0 0' + "\n")
    end
  end
end