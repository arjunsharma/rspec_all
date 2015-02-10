# Go with RSpec

This is a demo application for showing how RSpec and Ruby can be used to test applications in other languages. In this case, we are testing a simple server written in Go. The project includes:

### main.go

The Go server. It responds to /ping with a message of `pong`

### Gemfile & Gemfile.lock

Represent the Ruby dependencies. Dependencies can be installed via `gem install bundler; bundle install`

### spec/spec_helper.rb

The RSpec configuration, including starting and stopping the Go server

### spec/runner.rb

Contains the code to spawn the Go server in a new process, and to kill that same process

### spec/ping_spec.rb

Contains the sample spec testing the Go server

### server.sh

Runs the Go server. Included here for clarity. [Here are the instructions for installing Go](https://golang.org/doc/install)

### tests.sh

Runs the tests. Included here for clarity.

### LICENSE

Contains a copy of the MIT License (MIT) under which this repo is licensed
