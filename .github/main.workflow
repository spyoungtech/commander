workflow "New workflow" {
  resolves = ["Mirror Action"]
  on = "push"
}

action "Mirror Action" {
  uses = "./"
  secrets = ["GIT_PASSWORD"]
  args = "https://gitlab.com/spyoungtech/mirror-action.git"
  env = {
    GIT_USERNAME = "spyoungtech"
  }
}
