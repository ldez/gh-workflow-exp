workflow "New workflow" {
  resolves = ["Hello World"]
  on = "push"
}

action "Hello World" {
  uses = "./.github/action-a"
  env = {
    MY_NAME = "ldez"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
