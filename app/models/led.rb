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

  def self.current_state
    serialport = Serial.new '/dev/ttyACM0'

    serialport.write("a\n")
    response = ''

    response_char = serialport.getbyte&.chr

    while response_char != "\n"
      response += response_char.to_s
      response_char = serialport.getbyte&.chr
    end

    response
  end
end