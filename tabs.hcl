# Service tab - exposes the nginx web server to users
resource "service" "webserver" {
  target = resource.container.webserver
  port   = 80
  scheme = "http"
}

# Terminal tab - provides command-line access
resource "terminal" "shell" {
  target = resource.container.webserver
  shell = "/bin/bash"
}