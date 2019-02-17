workflow "New workflow" {
  resolves = ["Hello World"]
  on = "push"
}

action "Hello World" {
  uses = "./.github/actions/action-a"
  env = {
    MY_NAME = "ldez"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "docker://containous/aloba" {
  uses = "docker://containous/aloba"
  args = "action"
  secrets = ["GITHUB_TOKEN"]
}

workflow "Issues" {
  on = "issues"
  resolves = ["Hello World-1"]
}

action "Hello World-1" {
  uses = "./.github/actions/action-a"
  args = "\"Hello world, I'm $MY_NAME!\""
  env = {
    MY_NAME = "ldez"
  }
}
