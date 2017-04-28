class LED
  def self.set(led, red, green, blue)
    self.connection.write([led, red, green, blue].join(' ')+ "\n")
  end

  def self.reset(size)
    serialport = self.connection

    (size * size).times do |led|
      serialport.write((led + 1).to_s + ' 0 0 0' + "\n")
    end
  end

  def self.current_state
    serialport = self.connection

    serialport.write("a\n")
    response = ''

    response_char = serialport.getbyte&.chr

    timeout = Time.current + 10.seconds

    while response_char != "\n"
      if Time.current >= timeout
        raise 'Timeout reached.'
      end
      response += response_char.to_s
      response_char = serialport.getbyte&.chr
    end

    response
  end

  def self.off?(state)
    if state['r'] == 0 && state['g'] == 0 && state['b'] == 0
      return true
    end

    return false
  end

  def self.connection
    # establish connection and wipe previous buffer
    serialport = Serial.new '/dev/arduino'
    serialport.read(64)

    serialport
  end
end