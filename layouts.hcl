resource "layout" "two_column" {
  column {
    width = "50"

    tab {
      title = "Instructions"
      type = "instructions"
    }
  }

  column {
    width = "50"

    tab {
      title = "Terminal"
      terminal = resource.terminal.shell.meta.id
    }

    tab {
      title = "Service"
      service = resource.service.webserver.meta.id
    }
  }
}