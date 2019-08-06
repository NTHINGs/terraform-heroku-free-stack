resource "heroku_app" "app" {
  name                  = var.name
  region                = var.region
  config_vars           = var.config_vars
  sensitive_config_vars = var.sensitive_config_vars
}

resource "heroku_build" "build" {
  app = heroku_app.app.id
  source = {
    path = var.tar_build_path
  }
}

resource "heroku_formation" "formation" {
  app      = heroku_app.app.name
  type     = "web"
  quantity = 1
  size     = "free"

  depends_on = ["heroku_build.build"]
}
