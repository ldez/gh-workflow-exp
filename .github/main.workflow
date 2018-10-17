workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./.github/action-a"
  env = {
    MY_NAME = "ldez"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

