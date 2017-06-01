class LED
  def self.set(led, red, green, blue)
    self.connection.write([led, red, green, blue].join(' ')+ "\n")
  end

  def self.reset(size)
    self.fill_color(size * size, 0, 0, 0)
  end

  def self.draw_number(number, red, green, blue)
    LED.off(81)
    first = number.to_s[0]
    second = number.to_s[1]

    self.draw_number_by_offset(first, 0, red, green, blue)
    self.draw_number_by_offset(second, 5, red, green, blue)
  end

  def self.draw_number_by_offset(number, offset, red, green, blue)
    return if number.nil?

    number = number.to_i

    serialport = self.connection

    if number == 1
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 2
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([28 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 3
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 4
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 5
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 6
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([28 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 7
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 8
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([28 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 9
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([20 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([21 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    if number == 0
      serialport.write([1 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([2 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([3 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([4 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([10 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([13 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([19 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([22 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([28 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([31 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([37 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([38 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([39 + offset, red, green, blue].join(' ')+ "\n")
      serialport.write([40 + offset, red, green, blue].join(' ')+ "\n")
    end

    18.times do |index|
      serialport.write([55 + index, red, green, blue].join(' ')+ "\n")
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

  def self.fill_color(size, red, green, blue)
    serialport = self.connection

    size.times do |led|
      serialport.write([led + 1, red, green, blue].join(' ')+ "\n")
    end
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
    serialport.read(1024)

    serialport
  end

  def self.epilepsy(size, count, interval)
    count.times do
      red = rand(256)
      green = rand(256)
      blue = rand(256)
      self.fill_color(size, red, green, blue)
      sleep(interval)
    end
  end
end