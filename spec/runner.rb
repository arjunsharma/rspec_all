class Runner
    @@pid = nil
    def self.run
        @@pid = Process.spawn('go run main.go', pgroup: true)
        sleep 2
    end

    def self.stop
        Process.kill(-9, @@pid)
    end
end