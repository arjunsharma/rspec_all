class Runner
  @@pid = nil

  def self.run
    # spawn the Go process
    @@pid = Process.spawn('go run main.go', {pgroup: true})

    # naively wait for the Go server to be up and running
    sleep 5
  end

  def self.stop
    # kill the Go process
    Process.kill(-9, @@pid)
  end
end