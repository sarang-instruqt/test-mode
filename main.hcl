resource "lab" "main" {
  title = "My Web Server Lab"
  description = "Learn web server basics by customizing an nginx homepage"
  layout = resource.layout.two_column

  content {
    chapter "getting_started" {
      title = "Getting Started with Web Servers"

      page "customize_homepage" {
        reference = resource.page.customize_homepage
      }
    }
  }
}