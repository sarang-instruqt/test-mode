resource "task" "edit_homepage" {
  description = "Customize the nginx homepage with your own message"

  config {
    target = resource.container.webserver
  }

  condition "file_modified" {
    description = "Customize the nginx homepage with your own message"

    check {
      script          = "scripts/check_homepage.sh"
      failure_message = "Please edit /usr/share/nginx/html/index.html with your custom message"
    }
  }
}