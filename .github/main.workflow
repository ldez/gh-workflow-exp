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

workflow "Aloba: Issues" {
  on = "issues"
  resolves = ["docker://containous/aloba"]
}

action "docker://containous/aloba" {
  uses = "docker://containous/aloba"
  args = "action"
  secrets = ["GITHUB_TOKEN"]
}
