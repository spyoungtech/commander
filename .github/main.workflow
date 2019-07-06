workflow "Mirror Workflow" {
  on = "push"
  resolves = ["Mirror Action"]
}

action "Mirror Action" {
  uses = "spyoungtech/mirror-action@master"
  secrets = ["GIT_PASSWORD"]
  args = "https://gitlab.com/spyoungtech/voice-commander.git"
  env = {
    GIT_USERNAME = "spyoungtech"
  }
}
