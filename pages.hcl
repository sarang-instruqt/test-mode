resource "page" "customize_homepage" {
  title = "Customize Your Web Server"
  file  = "instructions/customize_homepage.md"

  activities = {
    edit_homepage = resource.task.edit_homepage
  }
}