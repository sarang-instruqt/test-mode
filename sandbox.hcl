# Network - Foundation for all container communication
resource "network" "main" {
  subnet = "10.0.199.0/24"
}

# Container - nginx web server with network connection
resource "container" "webserver" {
  image {
    name = "nginx:1.25"
  }

  port {
    local = 80    # Port inside the container
  }

  # Resource chaining - connect to network
  network {
    id = resource.network.main.meta.id
  }
}