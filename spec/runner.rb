require 'httparty'

class Runner
  @@pid = nil

  def self.run
    @@pid = Process.spawn('go run main.go', {pgroup: true}) # spawn the Go process

    number_of_attempts = 0
    while number_of_attempts < 10
      begin
        response = HTTParty.get('http://localhost:3000/ping') # hit the ping endpoint

        break if response.code == 200 # success!
      rescue Errno::ECONNREFUSED # rescue only if the exception is a failure to connect
        number_of_attempts += 1
        sleep 0.5
      end

      raise 'Failed to start Go server' if number_of_attempts == 10
    end
  end

  def self.stop
    # kill the Go process
    Process.kill(-9, @@pid)
  end
end